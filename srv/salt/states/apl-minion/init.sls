salt-minion:
    pkgrepo.managed:
      - humanname: SaltStack Latest Release Channel for Ubuntu $releasever
      - name: deb https://repo.saltproject.io/py3/ubuntu/20.04/arm64/3005 focal main
      - file: /etc/apt/sources.list.d/salt.list
      - key_url: https://repo.saltproject.io/py3/ubuntu/20.04/arm64/3005/salt-archive-keyring.gpg
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
    - source: salt://apl-minion/minion
    - managed
    - user: root
    - group: root
    - mode: 644
    - template: jinja