# untar the files
cd /
mkdir data
tar -C data/ -xzvf sa_house_sales.tar.gz

# add the files to the hdfs
hadoop fs -mkdir /user/sa_house_sales
hadoop fs -put /data/datafiles/* /user/sa_house_sales/

