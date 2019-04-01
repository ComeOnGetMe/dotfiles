set -x

./install-vim.sh

ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.gitconfig ~/.gitconfig

cat ./.functions >> ~/.zshrc  # TODO: prevent duplicate appends

tmux source-file ~/.tmux.conf

echo "DON'T FORGET TO SOURCE YOUR ~/.[bash/zsh/fsh]rc!"
