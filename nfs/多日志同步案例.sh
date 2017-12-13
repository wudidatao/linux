业务需求:
web服务过多时，如果想同时查看多个日志的内容需要分别登录服务器，非常麻烦，可以通过nfs同步到一个位置，然后用tail同时查看，简单方便，没有网络开销，也不用实时同步日志，想看时候看。

web服务器安装nfs
yum install nfs-utils portmap
service rpcbind start
service nfs start
chkconfig rpcbind on
chkconfig nfs on

配置目录
echo "/data/logs *(ro,async,no_root_squash)" >> /etc/exports

mkdir /data/logs/5/ /data/logs/24/ /data/logs/25/ /data/logs/115/ /data/logs/116/ /data/logs/118/

mount -t nfs 192.168.100.5:/data/logs /data/logs/5/
mount -t nfs 192.168.100.24:/data/logs /data/logs/24/
mount -t nfs 192.168.100.25:/data/logs /data/logs/25/
mount -t nfs 192.168.100.115:/data/logs /data/logs/115/
mount -t nfs 192.168.100.116:/data/logs /data/logs/116/
mount -t nfs 192.168.100.118:/data/logs /data/logs/118/

22服务器

不输出服务器ip
tail -q -f 115/course-web-server/course-web-server.log 116/course-web-server/course-web-server.log 118/course-web-server/course-web-server.log

输出服务器ip
tail -f 115/course-web-server/course-web-server.log 116/course-web-server/course-web-server.log 118/course-web-server/course-web-server.log
