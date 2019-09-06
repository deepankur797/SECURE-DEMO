mkdir -p /opt/share/cas
chown -R nobody:nogroup /opt/share/cas/
chmod -R 777 /opt/share/cas/
echo /opt/share/cas *(rw,sync,no_root_squash) >> /etc/exports
