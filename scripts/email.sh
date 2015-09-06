sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' /etc/apache2/sites-available/default
#install sendmail
apt-get install sendmail
echo "define(\`SMART_HOST',\`smtp.admin.iiit.ac.in')" >> /etc/mail/sendmail.mc
service sendmail restart
