# # encoding: utf-8

# Inspec test for recipe devbox::chefdk

describe package('chefdk') do
  it { should be_installed }
end

describe command('which chef') do
  its('exit_status') { should eq 0 }
end
