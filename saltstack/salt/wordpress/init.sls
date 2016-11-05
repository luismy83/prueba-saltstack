wordpress:
  pkg:
    - installed
    - pkgs:
      - httpd 
      - php
      - php-gd
  service:
    - running
    - name: httpd
    - enable: True    
