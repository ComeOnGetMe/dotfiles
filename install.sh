set -x

./install-vim.sh

ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.gitconfig ~/.gitconfig

cat ./.zshrc >> ~/.zshrc