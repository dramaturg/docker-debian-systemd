# docker-debian-systemd

Debian container running systemd in unpriviledged mode

start like this:
```
docker run -d -t -i -v /sys/fs/cgroup:/sys/fs/cgroup:ro dramaturg/debian-systemd
```

Or use supplied makefile.


## Basing containers on this

Docker environment variables are imported into systemd when the container starts up - see configurator_dumpenv.sh

If you need to change a configuration file based on docker environment variables, check out configurator.sh. It too runs when the container first starts up.


## Gotchas

* comes with a backported version of systemd (not in backports at this point in time) and thus comes with my personal repo in its /etc/apt/sources.list. Remove that as well as my PGP key if you don't fancy having some weird guys packages available for installation.
* backports are enabled and pinned to be used.
* cron, rsyslogd and atd are running, reconfigure or disable as required
* unattended upgrades are enabled

