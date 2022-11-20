apl-system-software-4.0.6_arm64.deb:
  cmd.run:
    - name: |
        dpkg -i /tmp/apl-system-software-4.0.6_arm64.deb
apl_manager:
  service:
    - running
    - enable: True