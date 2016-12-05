# # encoding: utf-8

# Inspec test for recipe devbox::tmux

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe package('tmux') do
  it { should be_installed }
end

describe file('/home/nate/.tmux.conf') do
  it { should be_owned_by 'nate' }
  it { should be_grouped_into 'nate' }
end
