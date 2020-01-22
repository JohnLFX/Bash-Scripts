#!/bin/sh

wget https://download.java.net/java/GA/jdk13.0.2/d4173c853231432d94f001e99d882ca7/8/GPL/openjdk-13.0.2_linux-x64_bin.tar.gz -O openjdk-13.0.2_linux-x64_bin.tar.gz
echo "Verifying checksum..."
echo "acc7a6aabced44e62ec3b83e3b5959df2b1aa6b3d610d58ee45f0c21a7821a71  openjdk-13.0.2_linux-x64_bin.tar.gz" | sha256sum --check
echo "Extracting..."
mkdir /opt/jdk
tar -xzf openjdk-13.0.2_linux-x64_bin.tar.gz -C /opt/jdk
echo "Cleaning..."
rm openjdk-13.0.2_linux-x64_bin.tar.gz
echo "Updating paths..."
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-13.0.2/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-13.0.2/bin/javac 100
echo "Installation Complete"

