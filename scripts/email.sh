#Apache server configuration
#Which allows to read .htaccess file for apache directory
echo "Setting up Apache server configuration"
sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' /etc/apache2/sites-available/default
if [ $? -ne 0 ]
then
echo "Apache configuration is failed"
exit
fi
#Install sendmail
echo "Installing sendmail MTA....."
apt-get install sendmail
if [ $? -ne 0 ]
then
echo "Sendmail configuration is failed"
exit
fi
#Setting up email configuration
echo "Setting up sendmail configuration"
echo "define(\`SMART_HOST',\`smtp.admin.iiit.ac.in')" >> /etc/mail/sendmail.mc
if [ $? -ne 0 ]
then
echo "Sendmail configuration is failed"
exit
fi
#Restarting sendmail service
echo "Restarting sendmail service"
service sendmail restart
if [ $? -ne 0 ]
then
echo "Failed to restart sendmail service"
exit
fi
