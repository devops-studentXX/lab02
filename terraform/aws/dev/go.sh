#!/bin/bash


sudo apt-get -yy update
sudo apt-get -yy install git puppet
sudo apt-get -yy install ruby-bundler

git clone https://github.com/devops-studentXX/puppet.git

cd puppet
bundle
librarian-puppet install --clean
sudo FACTER_app_version=$APP_VERSION \
     FACTER_app_repository=$APP_REPOSITORY \
     FACTER_app_group_id=$app_group_id \
     FACTER_app_artifact_id=$app_artifact_id \
     FACTER_repo_url=$repo_url \
     FACTER_repo_user=$repo_user \
     FACTER_repo_password=$repo_password \
     puppet apply init.pp --modulepath modules

