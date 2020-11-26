#!/bin/bash


echo step 1
wget -O ~/Documents/Git/Jenkins/Gradle/gradle-4.7-bin.zip https://services.gradle.org/distributions/gradle-4.7-bin.zip

echo step 2
sudo apt install -y unzip

echo step 3
sudo mkdir /opt/gradle

echo step 4
sudo unzip -d /opt/gradle ~/Documents/Git/Jenkins/Gradle/gradle-4.7-bin.zip

echo step 5
sudo echo '''export PATH=$PATH:/opt/gradle/gradle-4.7/bin''' > /etc/profile.d/gradle.sh

echo step 6
sudo chmod 755 /etc/profile.d/gradle.sh

echo step 7
gradle --version

