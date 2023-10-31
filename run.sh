#!/bin/bash

        docker container run -it --detach --privileged \
		-e DISPLAY=$DISPLAY \
                --name javaws \
                --shm-size=1gb \
                --hostname javaws \
                --restart unless-stopped \
                --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
		--volume /tmp/.X11-unix/:/tmp/.X11-unix/ \
		--volume /tmp/:/tmp/host \
               localbuild/drac-javaws-console:$1

