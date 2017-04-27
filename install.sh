cp -rf .bashrc .bash_profile .vim ~/
tar -xf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make
sudo make install
