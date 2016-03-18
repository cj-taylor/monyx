# monyx

# What is this? 

A cake way to standup a linux box provisioned for dotnetcore with the ASP 6 HelloWorldMVC app.  

# Requirements for use 
1. VirtualBox - https://www.virtualbox.org/wiki/Downloads
2. Vagrant - https://www.vagrantup.com/downloads.html

# How do I use this? 

1. Clone it 
2. `vagrant up` (wait way too long for it to become ready) 
3. `vagrant ssh` 
 - `cd ../../app` 
 - `dnu restore` 
 - `dnu build` (moot by the following line) 
 - `dnx web` (on edits of the code on your HOST machine, kill this process in vagrant ssh then restart it to see your new changes)
4. On your host, browse to http://localhost:8080 
5. Behold, the HelloWorld ASP 6 example running

# To improve upon 
- Step 2 - This is an MVP and definitely can be tweaked for performance. 
- Step 3 - A manual step for now due to something awry with $HOME resolving on Windows/OSX Vagrants to different results 
  - Goal, get that fixed and use vagrant/setup_app.sh then uncomment the 
- Step 5 - For now this is the HelloWorldMVC, but really could be anything you decide to run 
