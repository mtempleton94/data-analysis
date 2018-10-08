# create a new database
hive -e "drop database if exists sa_house_sales cascade;"
hive -e "create database if not exists sa_house_sales;"

# store a list of all house sale data files
sales_data_files=( $(hadoop fs -ls /user/sa_house_sales/* | sed '1d;s/  */ /g' | cut -d\  -f8) )

# create a table for each data file
for filepath in "${sales_data_files[@]}"
do
   # get the name of the file to use as the table name
   filename=$(basename $filepath)
   filename="${filename%.*}"
   filename=${filename/-/_}

   echo "##############################################"
   echo "Creating table for $filename"
   echo "##############################################"

   # create the table
   hive -e "create table if not exists sa_house_sales.${filename}(city String, suburb String, numSales Int, avePrice decimal(10,3))
   ROW FORMAT DELIMITED
   FIELDS TERMINATED BY ','
   STORED AS TEXTFILE;"

   # load data into the table
   hive -e "LOAD DATA INPATH '${filepath}' OVERWRITE INTO TABLE sa_house_sales.${filename};"
	
done

