wp_config:
   file:
      - copy
      - source: /var/www/blog/wordpress/wp-config-sample.php
      - name: /var/www/blog/wordpress/wp-config.php
      - user: apache
      - group: apache
