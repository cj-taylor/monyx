# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.network "forwarded_port", guest: 5000, host: 8080, auto_correct: true
    config.vm.synced_folder "src", "/home/vagrant/src"
    config.vm.provision :shell, path: "vagrant/setup_dotnetcore.sh", privileged: false
    config.vm.provision :shell, path: "vagrant/setup_app.sh", privileged: false

end
