#
# Cookbook Name:: devbox
# Recipe:: docker
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

package %w(docker docker-compose)

service 'docker' do
  action [:enable]
end

group 'docker' do
  action :create
  append true
  members node['devbox']['user']
end
