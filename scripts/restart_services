#! /bin/bash

# Restart apache server
echo "####### Restarting Apache Server #######"
/etc/init.d/apache2 restart
if [ $? -ne 0 ]
then
    echo "Failed to restart Apache server"
    exit
fi
# Restart mysql server
echo "####### Restarting Mysql Server #######"
/etc/init.d/mysql restart
if [ $? -ne 0 ]
then
    echo "Failed to restart Mysql server"
    exit
fi

# Restart sendmail server

echo "####### Restarting Sendmail Service #######"
/etc/init.d/sendmail restart
if [ $? -ne 0 ]
then
    echo "Failed to restart sendmail service"
    exit
fi

echo "###### Restarted all the servers ######"

