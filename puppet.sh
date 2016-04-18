#!/bin/bash 
set -e -x

echo "~~~~~~~Installing puppet~~~~~~~~~"
sudo rpm -ivh http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-1.8.0-1.el7.ngx.x86_64.rpm
sudo yum install epel-release curl -y
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install puppet -y