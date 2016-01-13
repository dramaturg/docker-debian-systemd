# docker-debian-systemd

Debian container running systemd in unpriviledged mode

start like this:
```
docker run -d -t -i -v /sys/fs/cgroup:/sys/fs/cgroup:ro dramaturg/debian-systemd
```

Or use supplied makefile.


## Deriving Containers from this

Docker environment variables are imported in systemd when the container starts up - see configurator_dumpenv.sh

If you need to change configuration file based on docker environment variables, check out configurator.sh. It too runs when the container first starts up.


## Gotchas

* comes with a backported version of systemd (not in backports at this point in time)
* backports are enabled and packages will install from there if available (See /etc/apt/preferences)
* cron, rsyslogd and atd are running, reconfigure or disable as required
* auto-updates are enabled

