{% for user, args in pillar['users'].iteritems() %}
{{ user }}:
  user.present:
    - fullname: {{ args['fullname'] }}
    - name: {{ args['name'] }}
    - shell: {{ args['shell'] }}
    - uid: {{ args['uid'] }}

{% if 'key.pub' in args and args['key.pub'] == True %}
{{ user }}_key.pub:
  ssh_auth:
    - present
    - user: {{ user }}
    - source: salt://common/users/{{user}}/keys/key.pub
{% endif %}

{% endfor %}
