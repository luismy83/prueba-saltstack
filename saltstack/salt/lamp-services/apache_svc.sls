httpd_svc:
  service:
    - running
    - name: httpd
    - enable: True
    - reload: True
