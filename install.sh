# You should have ohmyzsh, tmux installed before this
set -x

./install-vim.sh

cp ./.tmux.conf ~/.tmux.conf
cp ./.gitconfig ~/.gitconfig

cat ./.zshrc_functions >> ~/.zshrc  # TODO: prevent duplicate appends

tmux source-file ~/.tmux.conf

echo "DON'T FORGET TO `source ~/.zshrc` "
