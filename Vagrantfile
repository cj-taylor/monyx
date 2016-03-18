# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, path: "vagrant/setup_dotnetcore.sh", privileged: false
    # config.vm.provision "shell",
    #     inline: "/bin/sh  /home/vagrant/../../vagrant/vagrant/setup_app.sh", privileged: true

    config.vm.network "forwarded_port", guest: 5000, host: 8080, auto_correct: true

    # config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.synced_folder "monyx", "/app"

end
