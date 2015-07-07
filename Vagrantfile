# -*- mode: ruby -*-
# vi: set ft=ruby :



Vagrant.configure("2") do |config|
  config.vm.box      = 'ubuntu/trusty64'
  config.vm.hostname = 'ruby-china-dev-box'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  # Create a static IP
  #config.vm.network :private_network, ip: '192.168.1.111'

  # A private dhcp network is required for NFS to work (on Windows hosts, at least)
  # Windows users should use the winnfsd plugin: https://github.com/GM-Alex/vagrant-winnfsd
  config.vm.network :private_network, type: "dhcp"

   # If using VirtualBox
  config.vm.provider :virtualbox do |vb|
    vb.name = "RubyChina-Dev-VM"

    # Set server cpus
    vb.customize ["modifyvm", :id, "--cpus", 1]

    # Set server memory
    vb.customize ["modifyvm", :id, "--memory", 1024]

    # Prevent VMs running on Ubuntu to lose internet connection
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  # https://github.com/mitchellh/vagrant/issues/1673#issuecomment-28288042
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
end