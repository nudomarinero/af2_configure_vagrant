#!/usr/bin/env bash

# Intall useful dependencies
sudo apt-get update
sudo apt-get -y install gcc make libc6-dev python-matplotlib python-pip \
  python-numpy python-dev
sudo apt-get build-dep -y python-scipy
sudo pip install scipy
sudo pip install astropy

# Install af2_configure
cd /home/vagrant
wget http://www.ing.iac.es/astronomy/instruments/af2/af2_configure/af2_configure.tar.gz
tar xfz af2_configure.tar.gz
chown -R vagrant af2_configure

# Install the dependencies of af2_configure
sudo apt-get install -y pgplot5 tcsh
wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/gcc-3.4/libg2c0_3.4.6-6ubuntu5_i386.deb
sudo dpkg -i --force-all libg2c0_3.4.6-6ubuntu5_i386.deb

# Update the configuration
touch .profile
echo "export PGPLOT_FONT=/usr/lib/pgplot5/grfont.dat" >> .profile
echo "export PATH=$PATH:/home/vagrant/af2_configure/bin" >> .profile