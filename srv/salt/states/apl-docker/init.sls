utilities:
  pkg.installed:
    - pkgs:
      - ca-certificates
      - curl
      - gnupg
      - lsb-release

repo:
  cmd.run:
    - name: |
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
        mkdir -m 0755 -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
        apt update

docker-ce:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

docker:
  service:
    - running
    - enable: True

docker-ce-cli:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

containerd.io:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

docker-compose-plugin:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False

docker-buildx-plugin:
  pkg:
    - installed
    - refresh: True
    - allow_updates: True
    - hold: False
