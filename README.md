# Ruby-China-Dev-Box
A virtual machine for Ruby-China.org development

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)


## Recommended Workflow

Building the virtual machine:

```bash

host $ git clone https://github.com/huobazi/ruby-china-dev-box
host $ cd ruby-china-dev-box
host $ vagrant plugin install vagrant-winnfsd
host $ vagrant up

```

After the installation has finished, clone your ruby-china repo to the box

```bash

host $ git clone git@github.com:<your username>/ruby-china.git

```

Then access the virtual machine with

```bash

host $ vagrant ssh

```

Install your ruby-china code in the VM

```
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-55-generic x86_64)
...
vagrant@ruby-china-dev-box:~$
vagrant@ruby-china-dev-box:~$ cd /vagrant/ruby-china
vagrant@ruby-china-dev-box:~$ ruby ./bin/setup
```

You will see

```bash

Checking Package Dependencies...
--------------------------------------------------------------------------------
MongoDB 2.0+                                                               [Yes]
Redis 2.0+                                                                 [Yes]
Memcached 1.4+                                                             [Yes]
ImageMagick 6.5+                                                           [Yes]
--------------------------------------------------------------------------------

Installing dependencies
--------------------------------------------------------------------------------
The Gemfile's dependencies are satisfied
--------------------------------------------------------------------------------

Configure
--------------------------------------------------------------------------------
Your MongoDB host (default: 127.0.0.1:27017):
Your Redis host (default: 127.0.0.1:6379):
--------------------------------------------------------------------------------

Seed default data...                                                      [Done]

== Removing old logs and tempfiles ==

Ruby China Successfully Installed.

```
Then start the rails server


```

vagrant@ruby-china-dev-box:~$ rails s -b 0.0.0.0

```
Open your browser and visit [http://localhost:3000](http://localhost:3000)


## Virtual Machine Management


Visit the [Vagrant documentation](http://docs.vagrantup.com/v2/) for more information on Vagrant.
