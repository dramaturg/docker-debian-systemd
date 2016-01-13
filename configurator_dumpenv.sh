#!/bin/bash - 

xargs -0 bash -c 'printf "%q\n" "$@" ; systemctl set-environment "$@"' -- \
	< /proc/1/environ \
	> /tmp/docker_environment

chmod 700 /tmp/docker_environment

