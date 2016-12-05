#
# Cookbook Name:: devbox
# Recipe:: virtual_box
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

user = node['devbox']['user']

cookbook_file '/etc/yum.repos.d/virtualbox.repo'

execute 'import Oracles rpm key' do
  command 'rpm --import https://www.virtualbox.org/download/oracle_vbox.asc'
end

package 'VirtualBox-5.1' do
  options '-y'
end

group 'vboxusers' do
  action :manage
  append true
  members user
  only_if { "grep #{user} /etc/shadow --quiet" }
end
