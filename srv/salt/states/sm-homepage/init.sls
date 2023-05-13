/var/lib/docker/volumes/smdash_smdashboard-data/_data/bookmarks.yaml:
  file:
    - source: salt://sm-homepage/bookmarks.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/smdash_smdashboard-data/_data/docker.yaml:
  file:
    - source: salt://sm-homepage/docker.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/smdash_smdashboard-data/_data/services.yaml:
  file:
    - source: salt://sm-homepage/services.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/smdash_smdashboard-data/_data/settings.yaml:
  file:
    - source: salt://sm-homepage/settings.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/smdash_smdashboard-data/_data/widgets.yaml:
  file:
    - source: salt://sm-homepage/widgets.yaml
    - managed
    - user: root
    - group: root
    - mode: 644