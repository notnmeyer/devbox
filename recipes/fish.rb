#
# Cookbook Name:: devbox
# Recipe:: fish
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

package 'fish'

home_dir = "/home/#{node['devbox']['user']}"

directory "#{home_dir}/.config" do
	user node['devbox']['user']
  group node['devbox']['user']
end

git "#{home_dir}/.config/fish" do
  repository 'https://github.com/notnmeyer/fish-config.git'
  reference 'master'
  action :checkout
	user node['devbox']['user']
  group node['devbox']['user']
end
