af2_configure with Vagrant
==========================

This is a Vagrant and a shell provisioning file to install af2_configure in an
Ubuntu box.

The software 
(af2_configure)[http://www.ing.iac.es/astronomy/instruments/af2/configuration.html] 
is used to generate the configuration files for the fibres of the 
(AutoFib2+WYFFOS instrument)[http://www.ing.iac.es/astronomy/instruments/af2/]
located in the 
(William Herschel Telescope)[http://www.ing.iac.es/astronomy/telescopes/wht/] 
in La Palma.

The software is a bit old and it is difficult to compile it in modern systems. 
The aim of the files offered in this repository is to be able to run 
af2_configure in a virtual machine without the need to struggle with the 
compilation process. The user just needs 
(VirtualBox)[https://www.virtualbox.org/] and 
(Vagrant)[https://www.vagrantup.com/] installed in their system.

Usage
-----

First clone the repository in your local system and enter the directory created
by git. Any file placed in this directory can be found in the ```/vagrant``` 
directory of the virtual machine when it is created.

Execute the following command:
```
vagrant up
```

To enter the system use:
```
vagrant ssh
```

Whitin the system you can enter the af2_configure directory and run the 
```bin/af2_config``` command.

The PGPLOT device ```\XSERVE``` should work correctly.
