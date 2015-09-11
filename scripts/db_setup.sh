#!/bin/bash
# Load the  config.sh using source comamnd
source config.sh
apt-get install expect -y
export DEBIAN_FRONTEND=noninteractive
#mysql server installation
echo "Installing mysql-server"
apt-get -q -y install mysql-server
mysqladmin -h $HOST_NAME -u $USER_NAME password $PASSWORD
expect db_setup.exe $HOST_NAME $USER_NAME $PASSWORD $DATABASE_NAME $PATH_FOR_SQL_FILE
 
