#!/bin/sh

wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -O openjdk-11.0.2_linux-x64_bin.tar.gz
echo "Verifying checksum..."
echo "99be79935354f5c0df1ad293620ea36d13f48ec3ea870c838f20c504c9668b57  openjdk-11.0.2_linux-x64_bin.tar.gz" | sha256sum --check
echo "Extracting..."
tar -xzf openjdk-11.0.2_linux-x64_bin.tar.gz -C /opt/jdk
echo "Cleaning..."
rm openjdk-11.0.2_linux-x64_bin.tar.gz
echo "Updating paths..."
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-11.0.2/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-11.0.2/bin/javac 100
echo "Installation Complete"
