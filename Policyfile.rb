# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

name 'devbox'
default_source :supermarket
run_list 'devbox::default'

cookbook 'devbox', path: '.'

cookbook 'build-essential', '~> 8.0.3', :supermarket
cookbook 'ssh', '~> 0.10.22', :supermarket
cookbook 'sshd', '~> 1.3.1', :supermarket
cookbook 'sudo', '~> 3.5.3', :supermarket
