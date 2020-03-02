# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = true

  config.vm.hostname = "ubuntu-localdev"
	config.vm.network "private_network", ip: "192.168.50.50"
	config.vm.synced_folder ".", "/vagrant", disabled: true
	config.disksize.size = "32GB"

  config.vm.provider "virtualbox" do |v|
    v.name = "ubuntu-localdev"
    v.memory = 5120
    v.cpus = 2
		v.gui = true
		v.customize ["modifyvm", :id, "--vram", "128"]
		v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  config.vm.provision "shell", path: "provisioning/scripts/initial_setup.sh"

  config.vm.provision "ansible" do |ansible|
		ansible.playbook = "provisioning/ansible/playbook.yml"
		ansible.compatibility_mode = "2.0"
  end
end