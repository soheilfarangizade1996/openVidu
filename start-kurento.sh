sudo service redis-server restart
sudo service coturn restart
sudo service kurento-media-server restart
openvidu_process_id=`pgrep -f openvidu-server`
sudo kill -9 $openvidu_process_id
sudo rm -f /var/log/openVidu.log
sudo java -Dopenvidu.secret=YOUR_SECRET -Dopenvidu.publicurl=https://medias.shooka.com -Dopenvidu.cdr=true -Dserver.port=443 -Dkms.uris=[\"ws://localhost:8888/kurento\"] -Dserver.ssl.key-store=/opt/ssl/webRtckeystore1.jks -Dserver.ssl.key-store-password=Sh00k@WebRtc -Dserver.ssl.key-alias=shookawebrtc -jar /opt/openvidu/openvidu-server-2.15.0.jar -> /var/log/openVidu.log &
