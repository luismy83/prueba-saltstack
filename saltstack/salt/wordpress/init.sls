wordpress:
  pkg:
    - installed
    - pkgs:
      - httpd 
      - php
      - php-gd
  archive:
    - name: /var/www/blog
    - source: http://wordpress.org/latest.tar.gz 
    - extracted
    - archive_format: tar
    - skip_verify: True
  file:
    - directory
    - name: /var/www/blog/wordpress
    - user: apache
    - group: apache
    - recurse: 
       - user
       - group
  service:
    - running
    - name: httpd
    - enable: True    
