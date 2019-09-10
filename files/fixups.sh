#!/bin/sh

export IP=`ip addr show eth0 | grep -1 inet | grep 10. | sed 's/^.*inet\ 1/1/' | awk -F / '{print $1}'`
export NAME=`hostname`

echo "$IP  $NAME" >> /etc/hosts


