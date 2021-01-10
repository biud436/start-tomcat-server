#!/bin/bash

TOMCAT_STARTUP = "/opt/tomcat/apache-tomcat-9.0.41/bin/startup.sh";
TOMCAT_SHUTDOWN = "/opt/tomcat/apache-tomcat-9.0.41/bin/shutdown.sh";
PM2 = "pm2";
TYPE = "$1";

if [[ "$TYPE" == "tomcat_start"]]; then
    "$TOMCAT_STARTUP"
fi

if [[ "$TYPE" == "tomcat_stop"]]; then
    "$TOMCAT_SHUTDOWN"
fi

if [[ "$TYPE" == "badge_start"]]; then
   "$PM2" start "/home/ubuntu/badge-server/src/index.js"
fi

if [[ "$TYPE" == "badge_stop"]]; then
   "$PM2" stop "/home/ubuntu/badge-server/src/index.js"
fi