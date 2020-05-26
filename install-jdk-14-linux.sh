#!/bin/sh

wget https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_linux-x64_bin.tar.gz -O openjdk-14.0.1_linux-x64_bin.tar.gz
echo "Verifying checksum..."
echo "22ce248e0bd69f23028625bede9d1b3080935b68d011eaaf9e241f84d6b9c4cc  openjdk-14.0.1_linux-x64_bin.tar.gz" | sha256sum --check
echo "Extracting..."
mkdir /opt/jdk
tar -xzf openjdk-14.0.1_linux-x64_bin.tar.gz -C /opt/jdk
echo "Cleaning..."
rm openjdk-14.0.1_linux-x64_bin.tar.gz
echo "Updating paths..."
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-14.0.1/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-14.0.1/bin/javac 100
echo "Installation Complete"
