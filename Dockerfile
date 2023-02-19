FROM ubuntu

WORKDIR /config

RUN mkdir -vp /config/qBittorrent/config/rss /downloads /config/openvpn

COPY qBittorrent.conf /config/qBittorrent/config/qBittorrent.conf
COPY start.sh /config/start.sh

RUN apt update && apt upgrade -y && apt install -y openvpn qbittorrent-nox
RUN chmod +x /config/start.sh

ENV QBT_PROFILE=/config

VOLUME [ "/config","/downloads" ]

EXPOSE 80

ENTRYPOINT [ "sh","/config/start.sh" ]