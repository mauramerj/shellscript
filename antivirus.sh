#!/bin/bash

/etc/init.d/clamav-freshclam restart
/etc/init.d/clamav-freshclam stop && /etc/init.d/clamav-freshclam force-reload

freshclam

apt-get update -y
apt-get upgrade -y

