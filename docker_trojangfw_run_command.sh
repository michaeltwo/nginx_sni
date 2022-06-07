docker run -dit --privileged=true --name=trojan6 -p 10240:10240 -v /etc/letsencrypt/live/a.kolkol.store/fullchain.pem:/path/to/fullchain.pem -v /etc/letsencrypt/live/a.kolkol.store/privkey.pem:/path/to/privkey.pem -v /home/trojan/config.json:/config/config.json trojangfw/trojan
# with SNI, so the port is 10240, docker 内部的certificate路径一定要是/path/to/ 然后加名字fullchain.pem，配置映射在/home/trojan/config.json文件夹下。另外docker中配置的路径一定要是/config/config.json  