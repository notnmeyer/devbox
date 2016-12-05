# # encoding: utf-8

# Inspec test for recipe devbox::docker

describe package('docker') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_running }
  it { should be_enabled }
end

describe package('docker-compose') do
  it { should be_installed }
end
