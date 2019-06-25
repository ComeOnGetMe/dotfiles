set -x

./install-vim.sh

cp ./.tmux.conf ~/.tmux.conf
cp ./.gitconfig ~/.gitconfig

cat ./.functions >> ~/.zshrc  # TODO: prevent duplicate appends

tmux source-file ~/.tmux.conf

echo "DON'T FORGET TO SOURCE YOUR ~/.[bash/zsh/fsh]rc!"
