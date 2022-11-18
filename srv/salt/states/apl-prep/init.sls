upgrade:
  cmd.run:
    - name: |
        apt update
        apt upgrade -y

locale:
  cmd.run:
    - name: |
        locale-gen --purge en_US.utf8 ru_RU.utf8

iptbl-pers:
  cmd.run:
    - name: |
        echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
        echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections

/tmp/balance_3.57-1build1_arm64.deb:
  file:
    - source: salt://apl-prep/balance_3.57-1build1_arm64.deb
    - managed
    - user: root
    - group: root
    - mode: 644

/tmp/apl-system-software-4.0.6_arm64.deb:
  file:
    - source: salt://apl-prep/apl-system-software-4.0.6_arm64.deb
    - managed
    - user: root
    - group: root
    - mode: 644

ncdu
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
mc
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
nano
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
wget
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
curl
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
htop
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
ca-certificates
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
gnupg
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
lsb-release
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
git
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
dnsutils
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
iptables
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
iptables-persistent
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
openvpn
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
ser2net
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
telnet
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
telnetd
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
traceroute
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
apache2
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
gammu
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
monit
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
motion
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
snmp
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
psmisc
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
ifupdown
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
lsof
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
lshw
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

balance_3.57-1build1_arm64.deb:
  cmd.run:
    - name: |
        dpkg -i /tmp/balance_3.57-1build1_arm64.deb

postfix:
  cmd.run:
    - name: |
        DEBIAN_FRONTEND=noninteractive apt install postfix

apl-system-software-4.0.6_arm64.deb
  cmd.run:
    - name: |
        dpkg -i /tmp/apl-system-software-4.0.6_arm64.deb