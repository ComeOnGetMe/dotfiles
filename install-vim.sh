set -x

# color mapping
mkdir -p ~/.vim/colors
cp ./solarized.vim ~/.vim/colors/solarized.vim

# set up vundle
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vundle
vim +PluginInstall +qall
