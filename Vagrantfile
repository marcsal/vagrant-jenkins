# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :jen02v do |jen02v|
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
    config.vm.box = "centos/7"
    config.ssh.username = "vagrant"
    config.ssh.insert_key = false
    config.ssh.private_key_path = ["/home/marcos/.ssh/vagrant_rsa", "~/.vagrant.d/insecure_private_key"]
    jen02v.vm.hostname = "jen02v"
    jen02v.vm.network :private_network, ip: "192.168.205.11"
    # jen02v.vm.network :public_network, ip: "192.168.1.10", bridge: "wlo1"
    config.vm.provision "shell",
      path:"tools/provision.sh"
    config.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "/workspace/git/ansible/playbooks/role-base.yml"
    end
  end
end
