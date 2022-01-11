#!/bin/sh

wget https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz -O openjdk-17.0.1_linux-x64_bin.tar.gz
echo "Verifying checksum..."
echo "1c0a73cbb863aad579b967316bf17673b8f98a9bb938602a140ba2e5c38f880a  openjdk-17.0.1_linux-x64_bin.tar.gz" | sha256sum --check
echo "Extracting..."
mkdir /opt/jdk
tar -xzf openjdk-17.0.1_linux-x64_bin.tar.gz -C /opt/jdk
echo "Cleaning..."
rm openjdk-17.0.1_linux-x64_bin.tar.gz
echo "Updating paths..."
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-17.0.1/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-17.0.1/bin/javac 100
echo "Installation Complete"
