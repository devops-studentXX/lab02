#!/bin/bash


sudo apt-get -yy update
sudo apt-get -yy install git puppet

git clone https://github.com/devops-studentXX/puppet.git

cd puppet
bundle
librarian-puppet install --clean
sudo FACTER_app_version=$APP_VERSION FACTER_app_repository=$APP_REPOSITORY puppet apply init.pp --modulepath modules
