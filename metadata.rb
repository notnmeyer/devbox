name 'devbox'
maintainer 'Nate Meyer'
maintainer_email 'nmeyer@gmail.com'
license 'all_rights'
description 'Configures a devbox for Nate'
long_description 'Configures a devbox for Nate'
version '0.0.0'
issues_url 'https://github.com/notnmeyer/devbox/issues' if respond_to?(:issues_url)
source_url 'https://github.com/notnmeyer/devbox' if respond_to?(:source_url)

supports 'fedora', '>= 24'

depends 'build-essential'
depends 'ruby_rbenv'
depends 'ssh'
depends 'sudo'
depends 'yum'
