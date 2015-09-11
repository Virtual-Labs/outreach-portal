#!/bin/sh
source config.sh
#Apache server configuration
#Which allows to read .htaccess file for apache directory
echo "Setting up Apache server configuration"
#sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' /etc/apache2/sites-available/default
sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' $APACHE_DEFAULT_CONFIG_PATH
if [ $? -ne 0 ]
then
    echo "Apache configuration is failed"
    echo "##### exiting #####"
    exit
fi
#Application database settings
sed -i "s/\['database'\] = '*'/\['database'\] = '$DATABASE_NAME'/" $PATH_FOR_DB_CONFIG_FILE
if [ $? -ne 0 ]
then
    echo "Failed to configure database name in application"
    echo "##### exiting #####"
    exit
fi
