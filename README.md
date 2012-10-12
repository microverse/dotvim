dotvim
======

To Install:

Backup and remove current .vimrc and .vim directory from $HOME.  Then type the
following commands.

$ cd $HOME
$ git clone https://github.com/microverse/dotvim.git .vim
$ ln -s ~/.vim/vimrc ~/.vimrc
$ cd .vim
$ git submodule init
$ git submodule update
