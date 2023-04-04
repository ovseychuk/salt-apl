/etc/hosts:
  file:
    - source: salt://apl-hosts/hosts
    - managed
    - user: root
    - group: root
    - mode: 644
