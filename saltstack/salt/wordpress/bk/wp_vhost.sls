wp_vhost:
  file:
    - managed 
    - name: /etc/httpd/conf.d/wordpress.conf
    - source: salt://wordpress/conf/wordpress.conf
    - user: root 
    - group: root

