#
# Cookbook Name:: devbox
# Recipe:: chefdk
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

chefdk_rpm = "#{Chef::Config[:file_cache_path]}/chefdk.rpm"

remote_file chefdk_rpm do
  source 'https://packages.chef.io/stable/el/7/chefdk-0.19.6-1.el7.x86_64.rpm'
end

package 'chefdk' do
  source chefdk_rpm
end
