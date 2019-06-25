set -x

# set up vundle
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/.vim/colors
cp ./.vim/colors/solarized.vim ~/.vim/colors/solarized.vim

vim +PluginInstall +qall

# YCM needs cmake build
cd ~/.vim/bundle/YouCompleteMe && ./install.py
