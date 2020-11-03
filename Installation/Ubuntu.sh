#!/bin/bash


echo step 1
sudo apt update -y

echo step 2
sudo apt-get install -y nginx

echo step 3
sudo apt-get install -y openjdk-7-jdk

echo step 4
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

echo step 5
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

echo step 6
sudo apt-get update -y 

echo step 7
sudo apt-get install -y jenkins

echo step 8
sudo systemctl start jenkins

echo step 9
sudo systemctl enable jenkins

