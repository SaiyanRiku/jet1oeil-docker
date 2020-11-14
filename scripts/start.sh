/lib/systemd/systemd-udevd -d
udevadm control --reload-rules && udevadm trigger
#/usr/bin/jet1oeil-monitor-service
/etc/init.d/jet1oeil-monitor-service start
/usr/bin/jet1oeil-server
