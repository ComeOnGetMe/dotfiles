set -x

# set up vundle
ln -s ./.vimrc ~/.vimrc

mkdir -p ~/.vim/colors
ln -s ./colors/solarized.vim ~/.vim/bundle/colors/solarized.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

# YCM needs cmake build
cd ~/.vim/bundle/YouCompleteMe && ./install.py --all