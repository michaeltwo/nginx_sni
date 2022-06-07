docker run -dit --name=mynginx   -p 10240:10240 -v /usr/fullchain.pem:/usr/fullchain.pem -v /usr/privkey.pem:/usr/privkey.pem -v /root/nginx/:/etc/nginx -v /root/nginx/html:/usr/share/nginx/html --restart=always nginx:latest
#一定要map到具体的证书pem文件，另外map文件夹一定要求docker内部有相应的文件夹结构，再map到host上的文件夹中。
#端口10240:10240,前面一个是host提供对外的端口。后面一个是容器里面的端口，对应的是nginx.conf/conf.d/default.conf里面配置的端口。
