# monyx

# What is this? 

A cake way to standup a linux box provisioned for dotnetcore with the ASP 6 HelloWorldMVC app.  

# Requirements for use 
1. VirtualBox - https://www.virtualbox.org/wiki/Downloads
2. Vagrant - https://www.vagrantup.com/downloads.html

# How do I use this? 

1. Clone it 
2. `vagrant up` (wait way too long for it to become ready) 
3. On your host, browse to `http://localhost:9000`
4. Behold, the HelloWorld ASP 6 example running

# To improve upon 
- Step 2 - This is an MVP and definitely can be tweaked for performance. Currenly full provision + app setup = 2min35s
- Step 4 - For now this is the HelloWorldMVC, but really could be anything you decide to run 
