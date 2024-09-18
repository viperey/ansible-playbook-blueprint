#!/bin/bash

NEXTCLOUD_PASSWORD=
NEXTCLOUD_CALENDARS_URL=http://files.rock/remote.php/dav/calendars/
DESTINATION_PATH=/home/viperey/services/nextcloud/data/nextcloud/data/admin/files/data
WGET_OPTS="--directory-prefix=nc-backups --timestamping"

docker exec -it freshrss-app bash -c '/var/www/FreshRSS/cli/export-opml-for-user.php --user admin' > /xx/yy/export.opml
