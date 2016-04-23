# centos7-packer
Provisions an CentOS 7, ami &amp; vagrant box.  Provisioner: puppet


Usage
-----

Ensure you have [packer](https://packer.io/downloads.html), [vagrant](https://www.vagrantup.com/downloads.html), [virtualbox](https://www.virtualbox.org/wiki/Downloads) and other dependencies installed.

When working with cloud providers like AWS pragmatically.  Packer will perform a lookup for your authentication tokens/keys.
The easiest way I find is to set these as environment variables like so:
```
export aws_access_key='...'
export aws_secret_key='...'
```
Once you're all set, just run packer with the build option and sit back.
```
packer build <template.json file>
```
Use the 'only' flag if you want to build from just one of the providers. (Options: ami or vagrantbox)
```
packer build -only vagrantbox <template.json file>
```
