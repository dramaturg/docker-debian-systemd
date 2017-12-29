#!/bin/bash - 

xargs -n1 -0 bash -c 'echo "$0"; systemctl set-environment "$0"' \
	< /proc/1/environ \
	> /tmp/docker_environment

chmod 700 /tmp/docker_environment

