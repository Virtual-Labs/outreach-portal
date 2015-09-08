#!/bin/bash
# To avoid prompt for user credentials
export DEBIAN_FRONTEND=noninteractive
#mysql server installation
echo "Installing mysql-server"
apt-get -q -y install mysql-server
if [ $? -ne 0 ]
then
echo "Mysql installation is failed"
exit
fi
#Choose your database name here
database_name="outreach"
# Creates specified database
echo "Creating database $database_name"
mysql -u root -Bse "create database $database_name;"
if [ $? -ne 0 ]
then
echo "Failed to created database $database_name"
exit
fi
#Looking for directory which contains .sql for 
cd ../possibillion/Documents/
# Replace "outreach.sql" file with your file
# Note: If you have more than one .sql file repeat below command w.r.t to database and file name
mysql -u root $database_name < outreach.sql
cd /var/www/application/config/
#sed "s/$db['default']['database'] = 'outreachvlabs';/$db['default']['database'] = '$database_name';/g" database.php
#sed -i "s/\['database'\] = .*./\['database'\] = '$database_name';/" database.php
#sed -i "s/\['database'\] = '*'/\['database'\] = '$database_name';/" database.php
echo "Setting up database in application"
sed -i "s/\['database'\] = '*'/\['database'\] = '$database_name'/" database.php
if [ $? -ne 0 ]
then
echo "Failed to configure database name in application"
exit
fi
echo "Restarting Apache application"
service apache2 restart
if [ $? -ne 0 ]
then
echo "Failed to restart apache-server"
exit
fi
echo "Database configuration is done"
