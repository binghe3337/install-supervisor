# install-supervisor
Install and configure the supervisor.<br>
Supervisor安装：<br>
apt-get install python-pip<br>
pip install supervisor<br>
执行：mkdir -p /etc/supervisor/relative/directory<br>
echo_supervisord_conf > /etc/supervisor/supervisord.conf<br>
去掉/etc/supervisor/supervisord.conf末尾的[include]和最后一行的注释符号<br>
转到/etc/supervisor/relative/directory目录，添加配置文件，以.ini结尾。
配置文件格式：
[program:sleep]
command=/bin/sleep 2500
autostart=true
user=root
更完整的配置文件格式：
[program:theprogramname]
command=/bin/cat
startsecs=1
autostart=true
user=root
;directory=/tmp
;environment=A="1",B="2"
;redirect_stderr=true
;stdout_logfile=/var/log/theprogramname.log
将Supervisor设置为开机启动：
wget https://raw.githubusercontent.com/binghe3337/install-supervisor/master/supervisor_autostart.sh
chmod +x supervisor_autostart.sh
./supervisor_autostart.sh

Supervisor 相关命令：
1、service supervisord {start|stop|restart|status}
例如：service supervisord status
2、supervisorctl {start|stop|restart|status} [项目名称]
例如：supervisorctl status sleep
