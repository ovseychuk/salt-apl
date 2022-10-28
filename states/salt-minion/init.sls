salt-minion:
    pkgrepo.managed:
      - humanname: SaltStack Latest Release Channel for Ubuntu $releasever
      - name: deb https://repo.saltproject.io/salt/py3/ubuntu/22.04/amd64/latest jammy main
      - file: /etc/apt/sources.list.d/salt.list
      - key_url: https://repo.saltproject.io/salt/py3/ubuntu/22.04/amd64/latest/salt-archive-keyring.gpg
      - gpgcheck: True
      - enabled: True
      - require_in:
        - pkg: salt-minion
    pkg:
      - installed
      - refresh: True
      - allow_updates: True
      - hold: False
    service:
      - running
      - enable: True
      - require:
        - pkg: salt-minion
      - watch:
        - file: /etc/salt/minion

/etc/salt/minion:
  file:
    - source: salt://salt-minion/minion
    - managed
    - user: root
    - group: root
    - mode: 644
    - template: jinja