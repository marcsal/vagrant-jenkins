# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :jen01v do |jen01v|
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
    config.vm.box = "centos/7"
    config.ssh.username = "vagrant"
    config.ssh.insert_key = false
    config.ssh.private_key_path = ["/home/marcsal/.ssh/vagrant_rsa", "~/.vagrant.d/insecure_private_key"]
    jen01v.vm.hostname = "jen01v"
    jen01v.vm.network :private_network, ip: "192.168.205.11"
    # jen01v.vm.network :public_network, ip: "192.168.1.10", bridge: "wlo1"
    config.vm.provision "shell",
      path:"tools/provision.sh"
    config.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "/workspace/git/ansible/playbooks/role-base.yml"
      ansible.extra_vars = {
        "user" =>"marcsal",
        "sshkey" => "/home/marcsal/.ssh/id_rsa.pub",
        "sshroot" => "False", 
      }
    end
  end
end
