#!/bin/bash
# To avoid prompt for user credentials
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server
database_name="dbname"
# mysql -u root -Bse "create database YOUR_DATABASE_NAME;"
mysql -u root -Bse "create database $database_name;"

cd ../possibillion/Documents/

# Replace "emt"  with your database name 
# Replace "emt.sql" file with your file
# Note: If you have more than one .sql file repeat below command w.r.t to database and file name

mysql -u root $database_name < servdmsp_outreach.sql
cd /var/www/application/config/
#sed "s/$db['default']['database'] = 'outreachvlabs';/$db['default']['database'] = '$database_name';/g" database.php
#sed -i "s/\['database'\] = .*./\['database'\] = '$database_name';/" database.php
#sed -i "s/\['database'\] = '*'/\['database'\] = '$database_name';/" database.php
sed -i "s/\['database'\] = '*'/\['database'\] = '$database_name'/" database.php


