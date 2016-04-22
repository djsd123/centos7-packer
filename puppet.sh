#!/bin/bash 
set -e -x

echo "~~~~~~~Installing puppet~~~~~~~~~"
sudo yum install epel-release curl -y
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install puppet -y