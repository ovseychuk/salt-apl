upgrade:
  cmd.run:
    - name: |
        apt update
        apt upgrade -y

telegraf-key:
  cmd.run:
    - name: |
        wget -q https://repos.influxdata.com/influxdata-archive_compat.key

repo:
  cmd.run:
    - name: |
        echo '393e8779c89ac8d958f81f942f9ad7fb82a25e133faddaf92e15b16e6ac9ce4c influxdata-archive_compat.key' | sha256sum -c && cat influxdata-archive_compat.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/influxdata-archive_compat.gpg > /dev/null
        echo 'deb [signed-by=/etc/apt/trusted.gpg.d/influxdata-archive_compat.gpg] https://repos.influxdata.com/debian stable main' | sudo tee /etc/apt/sources.list.d/influxdata.list
        apt update

telegraf:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

telegraf:
  service:
    - running
    - enable: True