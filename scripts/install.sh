#!/bin/bash
#sudo yum -y install tomcat
#sudo yum -y install httpd
#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install Java (required by Tomcat)
echo "Installing Java..."
yum install -y java-1.8.0-openjdk
#apt-get update -y


# Define Tomcat version and directory
TOMCAT_VERSION=9.0.85
TOMCAT_DIR=/opt/tomcat

# Download and install Tomcat if not already present
if [ ! -d "$TOMCAT_DIR" ]; then
    echo "Downloading and installing Tomcat..."
    curl -O https://downloads.apache.org/tomcat/tomcat-9/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz
    mkdir -p $TOMCAT_DIR
    tar -xvzf apache-tomcat-$TOMCAT_VERSION.tar.gz -C $TOMCAT_DIR --strip-components=1
    rm apache-tomcat-$TOMCAT_VERSION.tar.gz
    chmod +x $TOMCAT_DIR/bin/*.sh
    echo "Tomcat installed at $TOMCAT_DIR"
else
    echo "Tomcat already installed at $TOMCAT_DIR"
fi

# Optional: start Tomcat
#$TOMCAT_DIR/bin/startup.sh
