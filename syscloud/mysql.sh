mkdir -p /opt/share/mysql
chown -R nobody:nogroup /opt/share/mysql/
chmod -R 777 /opt/share/mysql/
echo /opt/share/mysql *(rw,sync,no_root_squash) >> /etc/exports
