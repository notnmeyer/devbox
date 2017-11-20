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

code_dir = "#{node['devbox']['home_dir']}/code"

directory code_dir do
  user node['devbox']['user']
  group node['devbox']['user']
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
