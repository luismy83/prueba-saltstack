pma_conffile:
   file:
      - managed
      - name: /etc/phpMyAdmin/config.inc.php
      - source: salt://phpmyadmin/conf/template.jinja
      - template: jinja
      - replace: True
