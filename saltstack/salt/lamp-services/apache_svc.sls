httpd_svc:
  service:
    - running
    - name: httpd
    - enable: True
    - require:
      - pkg: httpd
    - watch:
      - file: /etc/httpd/conf.d/*
