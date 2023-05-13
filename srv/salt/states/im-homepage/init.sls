/var/lib/docker/volumes/imdash_imdashboard-data/_data/bookmarks.yaml:
  file:
    - source: salt://im-homepage/bookmarks.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/imdash_imdashboard-data/_data/docker.yaml:
  file:
    - source: salt://im-homepage/docker.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/imdash_imdashboard-data/_data/services.yaml:
  file:
    - source: salt://im-homepage/services.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/imdash_imdashboard-data/_data/settings.yaml:
  file:
    - source: salt://im-homepage/settings.yaml
    - managed
    - user: root
    - group: root
    - mode: 644

/var/lib/docker/volumes/imdash_imdashboard-data/_data/widgets.yaml:
  file:
    - source: salt://im-homepage/widgets.yaml
    - managed
    - user: root
    - group: root
    - mode: 644