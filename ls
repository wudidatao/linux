ls 显示文件信息

ls+参数 表示查看当前路径下的文件信息
ls+参数 指定路径 表示查看指定路径下的文件信息

ls -l | grep oracle 查找当前路径下包含oracle的文件（不局限于文件名和内容，包括所有信息）
ls -l | grep ^d  查看当前路径以d开头的文件信息

参数
默认按照文件名称首字母排序
-a 列表显示所有文件（包括隐藏文件）
-l 列表显示所有文件，相当于ll
-d 列出指定目录文件
-R 级联显示，显示指定目录下的所有子目录文件，如果子目录文件较多，该指令会有很多输出
-Z 显示文件隐藏权限
-i 增加文件的inodes信息
-t 按时间降序排列文件，默认不排序
-n 用户和用户组以uid和gid形式显示
默认显示的是mtime
-c 显示ctime
-u 显示actime
-S 按照文件大小降序排序文件
-X 按文件类型排序
-h 文件大小以人类能看懂的形式显示
[root@ltser ~]# ls -lh 
total 64M
-rw------- 1 root root 1.4K Feb  6  2013 anaconda-ks.cfg
drwxr-xr-x 2 root root 4.0K Dec 17 21:25 Desktop
-rw-r--r-- 1 root root  39K Feb  6  2013 install.log
-rw-r--r-- 1 root root    0 Feb  6  2013 install.log.syslog
-rw-r--r-- 1 root root  63M Jan  6 19:50 test.dbf

[root@solairs /]#ls -l
总数 187396
drwxr-xr-x   2 root     root         512 10月 11日 00:27 Desktop
lrwxrwxrwx   1 root     root           9 10月 10日 16:48 bin -> ./usr/bin

-表示普通文件 
c表示设备文件里的串行端口设备（键盘，鼠标等一次性读取的设备）
b表示设备文件里的可供存储的设备接口（如闪存卡和硬盘） 
d表示目录
l表示连接文件
p表示管道文件
s表示（套接字文件）数据接口文件
