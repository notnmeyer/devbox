#
# Cookbook Name:: devbox
# Recipe:: tmux
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

package 'tmux'

cookbook_file "/home/#{node['devbox']['user']}/.tmux.conf" do
  source 'tmux.conf'
  user node['devbox']['user']
  group node['devbox']['user']
end
