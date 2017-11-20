# # encoding: utf-8

# Inspec test for recipe devbox::sshd

describe file('/etc/ssh/sshd_config') do
  its('content') { should match(/PermitRootLogin no/) }
  its('content') { should match(/PasswordAuthentication no/) }
  its('content') { should match(/ChallengeResponseAuthentication no/) }
  its('content') { should match(/X11Forwarding no/) }
end

describe command('find /etc/systemd/system') do
  its('stdout') { should match 'sshd.service' }
end
