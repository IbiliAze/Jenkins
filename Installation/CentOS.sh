#!/bin/bash


echo step 1
sudo yum update -y

echo step 2
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo step 3
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

echo step 4
sudo yum install java jenkins git

echo step 5
sudo systemctl start jenkins

echo step 6
sudo systemctl enable jenkins

echo step 7
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

