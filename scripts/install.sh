#!/bin/bash
#sudo yum -y install tomcat
#sudo yum -y install httpd
#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install Java (required by Tomcat)
#echo "Installing Java..."
#yum install -y java-1.8.0-openjdk
#apt-get update -y


# Define Tomcat version and directory
##TOMCAT_VERSION=9.0.85
TOMCAT_DIR=/opt/tomcat

# Download and install Tomcat if not already present
#if [ ! -d "$TOMCAT_DIR" ]; then
 ### mkdir -p $TOMCAT_DIR
   # tar -xvzf apache-tomcat-$TOMCAT_VERSION.tar.gz -C $TOMCAT_DIR --strip-components=1
   # rm apache-tomcat-$TOMCAT_VERSION.tar.gz
  #  chmod +x $TOMCAT_DIR/bin/*.sh
  #  echo "Tomcat installed at $TOMCAT_DIR"
#else
 #   echo "Tomcat already installed at $TOMCAT_DIR"
#fi

# Optional: start Tomcat
#$TOMCAT_DIR/bin/startup.sh
sudo yum install java-1.8.0-openjdk -y
cd /opt
sudo curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz

# Extract
sudo tar -xzf apache-tomcat-9.0.85.tar.gz
sudo mv apache-tomcat-9.0.85 tomcat9

# Give permissions
sudo chmod +x tomcat9/bin/*.sh
