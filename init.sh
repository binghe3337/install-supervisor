
pip install supervisor
mkdir -p /etc/supervisor/relative/directory
echo_supervisord_conf > /etc/supervisor/supervisord.conf
去掉/etc/supervisor/supervisord.conf末尾的[include]和最后一行的注释符号
echo '' >> /etc/supervisor/supervisord.conf
echo '' >> /etc/supervisor/supervisord.conf

转到/etc/supervisor/relative/directory目录，添加配置文件，以.ini结尾。
echo '[program:sleep]' > /etc/supervisor/relative/directory/sleep.ini
echo 'command=/bin/sleep 2500' >> /etc/supervisor/relative/directory/sleep.ini
echo 'autostart=true' >> /etc/supervisor/relative/directory/sleep.ini
echo 'user=root' >> /etc/supervisor/relative/directory/sleep.ini

echo '[program:theprogramname]' > /etc/supervisor/relative/directory/templet.ini.bak
echo 'command=/bin/cat' >> /etc/supervisor/relative/directory/templet.ini.bak
echo 'startsecs=1' >> /etc/supervisor/relative/directory/templet.ini.bak
echo 'autostart=true' >> /etc/supervisor/relative/directory/templet.ini.bak
echo 'user=root' >> /etc/supervisor/relative/directory/templet.ini.bak
echo ';directory=/tmp' >> /etc/supervisor/relative/directory/templet.ini.bak
echo ';environment=A="1",B="2"' >> /etc/supervisor/relative/directory/templet.ini.bak
echo ';redirect_stderr=true' >> /etc/supervisor/relative/directory/templet.ini.bak
echo ';stdout_logfile=/var/log/theprogramname.log' >> /etc/supervisor/relative/directory/templet.ini.bak


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
