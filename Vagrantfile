# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.box_url = "ruby-blog"

  config.vm.provision :shell, path: 'provisioning/install-rvm.sh',  args: 'stable', privileged: false
  config.vm.provision :shell, path: 'provisioning/install-ruby.sh', args: '2.2.2',  privileged: false
  config.vm.provision :shell, path: 'provisioning/install-mysql.sh', args: '123456'
  config.vm.provision :shell, path: 'provisioning/install-bundler.sh',              privileged: false
  config.vm.provision :shell, path: 'provisioning/install-gems.sh',                 privileged: false
  config.vm.provision :shell, path: 'provisioning/create-database.sh',                 privileged: true
end
