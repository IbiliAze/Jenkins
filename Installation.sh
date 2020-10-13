#!/bin/bash

#Debian/Ubuntu
sudo apt-get install nginx
sudo apt-get install openjdk-7-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl start jenkins

#Redhat/CentOS
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install java jenkins git
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
