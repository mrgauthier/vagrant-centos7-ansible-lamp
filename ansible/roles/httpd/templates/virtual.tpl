UseCanonicalName Off

LogFormat "%V %h %l %u %t \"%r\" %s %b" vcommon

<Directory /var/www/html>
  Options FollowSymLinks
  AllowOverride All
</Directory>

<VirtualHost *:80>
  ServerName %0

  CustomLog logs/%0_error.log vcommon

  VirtualDocumentRoot {{ doc_root }}/%0
  #VirtualScriptAlias {{ doc_root }}/%0/cgi-bin
</VirtualHost>
