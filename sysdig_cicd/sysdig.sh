docker run --name sysdig-agent \
--privileged \
--net host \
--pid host \
-e ACCESS_KEY=d83d2827-e01c-484f-b94e-99dedbafab34 \
-e TAGS=[TAGS] \
-v /var/run/docker.sock:/host/var/run/docker.sock \
-v /dev:/host/dev \
-v /proc:/host/proc:ro \
-v /boot:/host/boot:ro \
-v /lib/modules:/host/lib/modules:ro \
-v /usr:/host/usr:ro \
-e COLLECTOR=collector-static.sysdigcloud.com \
-e COLLECTOR_PORT=6443 \
-e SECURE=true \
-e CHECK_CERTIFICATE=true \
--shm-size=512m \
sysdig/agent
