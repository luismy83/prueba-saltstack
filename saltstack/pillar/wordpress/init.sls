wordpress:
   database:
      name: wordpress
      user: wordpress
      pass: app_w0rdPr3SsMySql
      host: localhost
   config:
      file: /etc/wordpress/wp-config.php
   apache:
      file: /etc/httpd/conf.d/wordpress.conf
