mkdir -p /opt/share/post
chown -R nobody:nogroup /opt/share/post/
chmod -R 777 /opt/share/post/
echo /opt/share/post *(rw,sync,no_root_squash) >> /etc/exports
