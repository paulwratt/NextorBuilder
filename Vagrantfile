# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "xesco/Win2012_Nextor"
  config.vm.communicator = "winrm"
  config.vm.network "forwarded_port", host:3389, guest: 3389
  config.vm.box_version = "1.0"
end
