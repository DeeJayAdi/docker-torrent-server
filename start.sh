sleep 1s

openvpn --daemon --config /config/openvpn/configuration.ovpn --auth-user-pass /config/openvpn/auth.txt 

qbittorrent-nox