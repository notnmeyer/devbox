#
# Cookbook Name:: devbox
# Recipe:: default
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

execute 'install yum because there is no dnf provider' do
  command 'dnf -y install yum'
end

include_recipe 'build-essential'

package %w(git vagrant vim)

execute 'git config email' do
  command 'git config --global user.email "nmeyer@gmail.com"'
end

execute 'git config user' do
  command 'git config --global user.name "Nate Meyer"'
end

include_recipe "#{cookbook_name}::user"
include_recipe "#{cookbook_name}::ssh_server"
include_recipe "#{cookbook_name}::docker"
include_recipe "#{cookbook_name}::chefdk"
#include_recipe "#{cookbook_name}::virtual_box"
include_recipe "#{cookbook_name}::tmux"
