#
# Cookbook Name:: devbox
# Recipe:: user
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.

user node['devbox']['user'] do
	manage_home true
end

sudo node['devbox']['user'] do
  user node['devbox']['user']
end

# configure authorized keys
require 'open-uri'
type, key = open("https://github.com/#{node['devbox']['github_user']}.keys").read.split

ssh_authorized_keys 'remote access' do
  user node['devbox']['user']
  key key
	type type
end

include_recipe "#{cookbook_name}::fish"

# set up directories
code_dir = "#{node['devbox']['home_dir']}/code"
th_dir = "#{node['devbox']['home_dir']}/code/treehouse"

[code_dir, th_dir].each do |dir|
	directory dir do
		user node['devbox']['user']
		group node['devbox']['user']
	end
end

link '/th' do
  to th_dir
end
 
# set up and symlink dot files
git "#{code_dir}/dotfiles" do
  repository 'https://github.com/notnmeyer/dotfiles.git'	
	user node['devbox']['user']
	group node['devbox']['user']
end

#execute 'set up dotfile symlinks' do
#	cwd "#{code_dir}/dotfiles"
#  command './symlink.sh'
#  user node['devbox']['user']
#	group node['devbox']['user']
#end
