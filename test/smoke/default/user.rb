# # encoding: utf-8

# Inspec test for recipe devbox::user

describe user('nate') do
  it { should exist }
  its('groups') { should eq %w(nate docker )}
end
