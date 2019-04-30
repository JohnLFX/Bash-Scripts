#!/bin/sh

wget https://download.oracle.com/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz -O openjdk-12.0.1_linux-x64_bin.tar.gz
echo "Verifying checksum..."
echo "151eb4ec00f82e5e951126f572dc9116104c884d97f91be14ec11e85fc2dd626  openjdk-12.0.1_linux-x64_bin.tar.gz" | sha256sum --check
echo "Extracting..."
mkdir /opt/jdk
tar -xzf openjdk-12.0.1_linux-x64_bin.tar.gz -C /opt/jdk
echo "Cleaning..."
rm openjdk-12.0.1_linux-x64_bin.tar.gz
echo "Updating paths..."
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-12.0.1/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-12.0.1/bin/javac 100
echo "Installation Complete"
