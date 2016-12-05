# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

name 'devbox'
default_source :supermarket
run_list 'devbox::default'

cookbook 'devbox', path: '.'

cookbook 'build-essential', '~> 7.0.2', :supermarket
cookbook 'ruby_rbenv', github: 'chef-rbenv/ruby_rbenv', tag: 'v1.1.0'
cookbook 'ssh', '~> 0.10.16', :supermarket
cookbook 'sshd', '~> 1.2.1', :supermarket
cookbook 'sudo', '~> 3.1.0', :supermarket
cookbook 'yum', '~> 4.1.0', :supermarket
