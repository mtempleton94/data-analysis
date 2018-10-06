# data-analysis
Scripts and data files for analysis using Hive, Impala...

## SA House Sales
### Data
This data set consists of quarterly median house sale prices for each suburb in South Australia between Q1 2015 and Q2 2018.
Data is taken from https://data.sa.gov.au/data/dataset/metro-median-house-sales and parsed to convert it to a format suitable for Hive data types. 
### Add data to HDFS
[TODO]
## Create hive tables
The script data-analysis/sa-house-sales/scripts/create-median-sales-table.sh will apply an appropriate schema to each file in the 
/user/sa_house_sales/ HDFS directory. 
```
./create-median-sales-table.sh
```
### Example Hive table output
[TODO]
