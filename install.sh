tar -xf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make
sudo make install

mkdir ~/backup-vim
mv ~/.vimrc ~/.bashrc ~/.bash_profile ~/.vim ~/backup-vim

ln -s .bashrc ~/.bashrc
ln -s .bash_profile ~/.bash_profile
ln -s .vim ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
