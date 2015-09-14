#!/bin/bash

#Reading variable from config file
source config.sh
#Install sendmail
echo "Installing sendmail MTA....."
apt-get install sendmail
if [ $? -ne 0 ]
then
    echo "Sendmail installation is failed"
    echo "#### exiting ####"
    exit
fi
#Setting up email configuration
if [ "$LOCAL_SMTP_SERVER_PRESENT" == "yes" ]
then
    echo "Setting up sendmail configuration"
    #echo "define(\`SMART_HOST',\`smtp.admin.iiit.ac.in')" >> /etc/mail/sendmail.mc
    echo "define(\`SMART_HOST',\`$SMTP_SERVER_ADDRESS')" >> $SENDMAIL_CONFIG_FILE_PATH
    if [ $? -ne 0 ]
    then
	echo "Sendmail configuration is failed"
	echo "#### exiting ####"
	exit
    fi
fi

echo "Restarting sendmail service"
service sendmail restart
if [ $? -ne 0 ]
then
    echo "Failed to restart sendmail service"
    echo "#### exiting ####"
    exit
fi
