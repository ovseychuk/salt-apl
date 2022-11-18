qemu-guest-agent:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
  service:
      - running
      - enable: True
      - require:
        - pkg: qemu-guest-agent