#!/bin/sh
set -x
vimdir=.jayvim

#install pathogen
echo "install pathogen"
mkdir -p ~/${vimdir}/autoload ~/${vimdir}/bundle && \
          curl -LSso ~/${vimdir}/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo install symbolic file
ln -s vimrc ~/.vimrc
ln -s .jayvim ~/.vim
ln -s .jayvim/vimrc.map ~/.vimrc.map

cd ~/${vimdir}/bundle
echo "install nerdtree"
git clone git://github.com/scrooloose/nerdtree.git

echo "install leaderf"
git clone https://github.com/Yggdroot/LeaderF.git

echo "install nerdComment"
git clone https://github.com/scrooloose/nerdcommenter.git

echo "install syntastic"
git clone https://github.com/scrooloose/syntastic.git

echo "install neocomplete"
git clone https://github.com/Shougo/neocomplcache.vim.git

echo "install tagbar"
git clone https://github.com/majutsushi/tagbar.git

echo "install cscope"
git clone https://github.com/brookhong/cscope.vim.git

