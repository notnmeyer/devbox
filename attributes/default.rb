default['devbox'].tap do |devbox|
  devbox['user'] = 'nate'
  devbox['github_user'] = 'notnmeyer'
	devbox['home_dir'] = "/home/#{node.default['devbox']['user']}"
end
