#/bin/bash
echo "
#端口优化
net.ipv4.ip_local_port_range = 1024 65000

#timewait优化
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_tw_recycle = 1
net.ipv4.tcp_tw_reuse = 1

#关闭连接优化
net.ipv4.tcp_fin_timeout = 30
#net.ipv4.tcp_synack_retries = 5
#net.ipv4.tcp_syn_retries = 5

#keepalived优化
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_keepalive_probes = 3
net.ipv4.tcp_keepalive_intvl = 30

#队列优化
net.core.somaxconn = 10240
net.ipv4.tcp_max_syn_backlog = 512
#net.ipv4.tcp_syncookies=1

" >> /etc/sysctl.conf

sysctl -p


