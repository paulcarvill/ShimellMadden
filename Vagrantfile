# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "chef/ubuntu-13.04"

  config.vm.network "forwarded_port", guest: 80, host: 8081

  config.ssh.forward_agent = true

  #config.ssh.private_key_path = "/Users/paulca/.ssh/paul_personal_id_rsa"
end
