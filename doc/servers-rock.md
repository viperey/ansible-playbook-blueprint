# Rock host

## Ports

| 22    | SSH  |    ssh-agent     |  -
| 53    | DNS  |    pihole        |  -
| 67    | DNS  |    pihole        |  -
| 80    | HTTP |    pihole        |  dns.*
| 4040  | HTTP |    airsonic        |  music.*
| 5050  | HTTP |    nextcloud     |  files.*
| 8081  | HTTP |    freshrss      |  rss.*
| 8083  | HTTP |    calibre-books   |  books.ebook.*
| 8084  | HTTP |    calibre-dev   |  dev.ebook.*
| 8085  | HTTP |    calibre-comic   |  comic.ebook.*
| 51820 | UDP  |    wireguard     |  -
| 51821 | HTTP |    wireguard     |  vpn.rock


## Memory (resources)

| 128 | proxy     |
| 128 | wireguard   |
| 1024  | nextcloud   |
| 128 | nextcloud-db  |
| 128 | freshrss    |
| 128 | freshrss-db |
| 256 | calibre-books |
| 256 | calibre-dev |
| 256 | calibre-comic |
| 1024  | airsonic    |
| 128 | airsonic-db |
| 128 | Pi-hole   |


## Backups

+ Nextcloud
+ + Contacts: `~/data/.Contacts-backup/`
+ + Calendar: `~/data/.Contacts-backup/`
+ + re-sync: `~/data/.Contacts-backup/`
+ + Tasks: `~/data/.Contacts-backup/`
+ + Deck: `~/data/.Contacts-backup/`
+ + Apps themselves: external, deck, task, calendar, contacts: done via db backup

+ Airsonic
+ + Playlists: cannot be back'd up automatically
+ FreshRss
+ + feeds: `~/data/dev/doc/data-backup/fresh-rss/export-$(date +%Y-%m-%d).opml`
+ Wireguard
+ + Clients: not done, not worth the security risk

