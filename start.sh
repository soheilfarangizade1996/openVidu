#!/bin/bash

sudo java -Dopenvidu.secret=YOUR_SECRET -Dopenvidu.publicurl=https://medias.shooka.com -Dopenvidu.cdr=true -Dserver.port=443 -Dkms.uris=[\"wss://medias.shooka.com:8443/kurento\"] -Dserver.ssl.key-store=/opt/ssl/webRtckeystore1.jks -Dserver.ssl.key-store-password=Sh00k@WebRtc -Dserver.ssl.key-alias=shookawebrtc -jar /opt/openvidu/openvidu-server-2.15.0.jar -> /var/log/openVidu.log &

