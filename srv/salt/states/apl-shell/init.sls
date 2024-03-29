upgrade:
  cmd.run:
    - name: |
        apt update
        apt upgrade -y

shellinabox:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
  service:
    - running
    - enable: True

/etc/default/shellinabox:
  file:
    - source: salt://apl-shell/shellinabox
    - managed
    - user: root
    - group: root
    - mode: 644

shbox-restart:
  cmd.run:
    - name: |
        systemctl restart shellinabox