from archlinux:latest
copy .tmp/node-template /opt/node-template
copy docker_start.sh /opt/docker_start.sh
cmd ["/bin/bash", "/opt/docker_start.sh"]
