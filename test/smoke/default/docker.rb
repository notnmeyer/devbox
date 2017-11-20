# # encoding: utf-8

# Inspec test for recipe devbox::docker

describe package('docker') do
  it { should be_installed }
end

describe command('find /etc/systemd/system') do
  its('stdout') { should match 'docker.service' }
end

describe package('docker-compose') do
  it { should be_installed }
end
