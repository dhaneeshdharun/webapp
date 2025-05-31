#!/bin/bash
set -e
echo "Validating Tomcat is running..." >> /tmp/deploy.log

systemctl status tomcat | grep running

echo "Tomcat is running." >> /tmp/deploy.log
