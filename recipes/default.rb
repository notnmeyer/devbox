#
# Cookbook Name:: devbox
# Recipe:: default
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

include_recipe 'build-essential'

package %w(git vim)

execute 'git config email' do
  command 'git config --global user.email "nmeyer@gmail.com"'
end

execute 'git config user' do
  command 'git config --global user.name "Nate Meyer"'
end

include_recipe "#{cookbook_name}::sshd"
include_recipe "#{cookbook_name}::user"
include_recipe "#{cookbook_name}::tmux"
include_recipe "#{cookbook_name}::fish"
include_recipe "#{cookbook_name}::docker"
