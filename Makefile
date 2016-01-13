
all:
	docker build -t dramaturg/debian-systemd .

rebuild:
	docker pull debian:jessie
	docker build --no-cache=true -t dramaturg/debian-systemd .

push:
	docker tag dramaturg/debian-systemd dramaturg/debian-systemd:$$(date +%Y%m%d) 
	docker push dramaturg/debian-systemd

run:
	docker run -d -i -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro dramaturg/debian-systemd

