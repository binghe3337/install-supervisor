fileInit()
{
    pip install supervisor
    mkdir -p /etc/supervisor/relative/directory
    echo_supervisord_conf > /etc/supervisor/supervisord.conf
    echo '[include]' >> /etc/supervisor/supervisord.conf
    echo 'files = relative/directory/*.ini' >> /etc/supervisor/supervisord.conf

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
}
fileInit
