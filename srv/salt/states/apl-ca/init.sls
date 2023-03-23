/etc/openvpn/ca.crt:
  file:
    - source: salt://apl-ca/ca.crt
    - managed
    - user: root
    - group: root
    - mode: 644
    - template: jinja