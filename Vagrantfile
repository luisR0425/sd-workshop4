# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.define :consul_server do |server|
    server.vm.box = "centos1706_v3"
    server.vm.network :private_network, ip: "192.168.33.9"
    #server.vm.network "public_network", bridge: "eno1", ip:"192.168.131.102", netmask: "255.255.255.0"
    server.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1048","--cpus", "1", "--name", "consul_server" ]
    end
      config.vm.provision "shell", path: "script.sh"
  end
end
