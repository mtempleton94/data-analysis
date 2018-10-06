# tar the data files
tar -cvzf sa_house_sales.tar.gz ../datafiles/

# copy the tar file to the hadoop container
hadoop_container_id=( $(docker ps -aqf "name=hadoop") )
docker cp sa_house_sales.tar.gz $hadoop_container_id:/
rm sa_house_sales.tar.gz 

