#!/bin/bash

# To avoid prompt for user credentials
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server

# mysql -u root -Bse "create database YOUR_DATABASE_NAME;"
mysql -u root -Bse "create database outreach;"

cd ../Documents/

# Replace "emt"  with your database name 
# Replace "emt.sql" file with your file
# Note: If you have more than one .sql file repeat below command w.r.t to database and file name

mysql -u root outreach < servdmsp_outreach.sql



