#!/bin/bash
#isexistapp="$(pgrep httpd)"
##if [[ -n $isexistapp ]]; then 
#udo systemctl stop httpd.service
#fi

#isexistapp="$(pgrep tomcat)"
#if [[ -n $isexistapp ]]; then 
#sudo systemctl stop tomcat.service
#fi

cd /opt/tomcat9/bin
sudo ./stopserver.sh
