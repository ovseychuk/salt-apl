upgrade:
  cmd.run:
    - name: |
        apt update
        apt upgrade -y


/etc/iperf3/iperf3-udp.sh:
  file:
    - source: salt://apl-iperf/iperf3-udp.sh
    - managed
    - user: root
    - group: root
    - mode: 644

/etc/iperf3/iperf3-tcp.sh:
  file:
    - source: salt://apl-iperf/iperf3-tcp.sh
    - managed
    - user: root
    - group: root
    - mode: 644

iperf3:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

iperf3-setup:
  cmd.run:
    - name: |
        chmod +x /etc/iperf3/iperf3-tcp.sh
        cp /usr/bin/iperf3 /usr/bin/iperf3-tcp
        chmod +x /etc/iperf3/iperf3-udp.sh
        cp /usr/bin/iperf3 /usr/bin/iperf3-udp
        chown telegraf.telegraf -R /etc/iperf3/

/etc/default/telegraf:
  file:
    - source: salt://apl-iperf/telegraf
    - managed
    - user: root
    - group: root
    - mode: 644

/etc/systemd/system/telegraf.service
  file:
    - source: salt://apl-iperf/telegraf.service
    - managed
    - user: root
    - group: root
    - mode: 644

telegraf-setup:
  cmd.run:
    - name: |
        systemctl daemon-reload
        systemctl enable telegraf.service
        systemctl start telegraf.service