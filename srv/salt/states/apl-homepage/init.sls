/var/lib/docker/volumes/apldash_apldashboard-data/_data/bookmarks.yaml:
  file:
    - source: salt://apl-homepage/bookmarks.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/apldash_apldashboard-data/_data/docker.yaml:
  file:
    - source: salt://apl-homepage/docker.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/apldash_apldashboard-data/_data/services.yaml:
  file:
    - source: salt://apl-homepage/services.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/apldash_apldashboard-data/_data/settings.yaml:
  file:
    - source: salt://apl-homepage/settings.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/apldash_apldashboard-data/_data/widgets.yaml:
  file:
    - source: salt://apl-homepage/widgets.yaml
    - managed
    - user: root
    - group: root
    - mode: 644