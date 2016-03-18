# monyx

# What is this? 

A cake way to standup a linux box provisioned for dotnetcore with the ASP 6 HelloWorldMVC app.  

# Requirements for use 
1. VirtualBox - https://www.virtualbox.org/wiki/Downloads
2. Vagrant - https://www.vagrantup.com/downloads.html

# How do I use this? 

1. Clone it 
2. cd to it
3. 'vagrant up' (wait way too long for it to become ready) 
4. `vagrant ssh` 
 - cd ../../app 
 - dnu restore 
 - dnu build (moot by the following line) 
 - dnx web 
5. On your host, browse to http://localhost:8080 
6. Behold, the HelloWorld ASP 6 example running

# To improve upon 
- Step 3 - This is an MVP and definitely can be tweaked for performance. 
- Step 4 - A manual step for now due to something awry with $HOME resolving on Windows/OSX Vagrants to different results 
  - Goal, get that fixed and use vagrant/setup_app.sh then uncomment the 
- Step 6 - For now this is the HelloWorldMVC, but really could be anything you decide to run 
