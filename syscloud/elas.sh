mkdir -p /opt/share/elas
chown -R nobody:nogroup /opt/share/elas/
chmod -R 777 /opt/share/elas/
echo /opt/share/elas *(rw,sync,no_root_squash) >> /etc/exports
