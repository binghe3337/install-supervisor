# install-supervisor
Install and configure the supervisor.

Supervisor安装：<br>
apt-get install python-pip<br>
pip install supervisor<br>
执行：mkdir -p /etc/supervisor/relative/directory<br>
echo_supervisord_conf > /etc/supervisor/supervisord.conf<br>
去掉/etc/supervisor/supervisord.conf末尾的[include]和最后一行的注释符号<br>
转到/etc/supervisor/relative/directory目录，添加配置文件，以.ini结尾。

配置文件格式：<br>
[program:sleep]<br>
command=/bin/sleep 2500<br>
autostart=true<br>
user=root

更完整的配置文件格式：<br>
[program:theprogramname]<br>
command=/bin/cat<br>
startsecs=1<br>
autostart=true<br>
user=root<br>
;directory=/tmp<br>
;environment=A="1",B="2"<br>
;redirect_stderr=true<br>
;stdout_logfile=/var/log/theprogramname.log

将Supervisor设置为开机启动：<br>
wget https://raw.githubusercontent.com/binghe3337/install-supervisor/master/supervisor_autostart.sh<br>
chmod +x supervisor_autostart.sh<br>
./supervisor_autostart.sh<br>

Supervisor 相关命令：<br>
1、service supervisord {start|stop|restart|status}<br>
例如：service supervisord status<br>
2、supervisorctl {start|stop|restart|status} [项目名称]<br>
例如：supervisorctl status sleep<br>
