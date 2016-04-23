#!/bin/bash 
set -e -x

echo "~~~~~~~Installing puppet~~~~~~~~~"
sudo yum install epel-release -y
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install gcc wget kernel-devel kernel-headers make dkms bzip2 iproute vim curl rsync puppet -y