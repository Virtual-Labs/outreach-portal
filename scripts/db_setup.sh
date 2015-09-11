#!/bin/sh
# Load the  config.sh using source comamnd
source config.sh
expect db_setup.exe $HOST_NAME $USER_NAME $PASSWORD $DATABASE_NAME $PATH_FOR_SQL_FILE
 
