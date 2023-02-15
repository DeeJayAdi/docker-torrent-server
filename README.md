# Torrent Server (qBittorrent-nox) Docker Image

## To pull the image `docker pull deejayadi/torrent-server`

## Default port 80

## Config path direcotry

`/config/qBittorrent/config/`

_File: qBittorrent.conf_

## Config settings

```conf
[Preferences]
WebUI\Port=80
WebUI\HostHeaderValidation=false
```

## Downloaded torrents path

`/downloads`

# Torrent Server with VPN

Mount a directory to `/config/openvpn`
Required filest in directory: `configuration.ovpn` and a `auth.txt` file.

Example `auth.txt` file:

```txt
superlogin
superpassword
```
