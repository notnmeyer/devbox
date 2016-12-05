#
# Cookbook Name:: devbox
# Recipe:: ssh_server
#
# Copyright (c) 2016 Nate Meyer, All Rights Reserved.
 
openssh_server '/etc/ssh/sshd_config' do
  ChallengeResponseAuthentication 'no'
  PasswordAuthentication 'no'
  PermitRootLogin 'no'
  X11Forwarding 'no'
end
