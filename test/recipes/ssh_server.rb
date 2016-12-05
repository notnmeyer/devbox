# # encoding: utf-8

# Inspec test for recipe devbox::ssh_server

describe file('/etc/ssh/sshd_config') do
  its('content') { should match(/PermitRootLogin no/) }
  its('content') { should match(/PasswordAuthentication no/) }
  its('content') { should match(/ChallengeResponseAuthentication no/) }
  its('content') { should match(/X11Forwarding no/) }
end

describe service('sshd') do
  it { should be_running }
  it { should be_enabled }
end
