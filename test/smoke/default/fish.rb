# # encoding: utf-8

# Inspec test for recipe devbox::fish

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe package('fish') do
  it { should be_installed }
end

describe file('/home/nate/.config/fish') do
  it { should be_directory }
end
