# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'kcachegrind'
Vagrant::Config.run do |config|
  config.vm.box = "quantal64-roderik"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://github.com/downloads/roderik/VagrantQuantal64Box/quantal64.box"

  # Shared Folders
  config.vm.share_folder "cachegrind_files",   "/home/vagrant/cachegrind_files", "cachegrind_files"

  # Puppet provisioning
  config.vm.provision  :puppet do  |puppet|
    puppet.manifests_path = "puppet"
    puppet.manifest_file = "kcachegrind.pp"
  end

  # Misc
  config.ssh.forward_agent = true
  config.vm.customize ["modifyvm", :id, "--memory", 1024]
end
