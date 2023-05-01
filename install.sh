# You should have ohmyzsh, tmux installed before this
set -x

# replace the default theme
sed -i 's/ZSH_THEME.*/ZSH_THEME="tjkirch"/' ~/.zshrc

# install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/psprint/zsh-navigation-tools
sed -i '/^plugins=/s/$/\n  zsh-autosuggestions\n  zsh-navigation-tools\n  zsh-syntax-highlighting\n  z/' ~/.zshrc
touch ~/.z

# append $TERM to zshrc becuase of terminator's bad behavior
echo '# set $TERM because terminator defaults to xterm' >> ~/.zshrc
echo 'export TERM=xterm-256color' >> ~/.zshrc

# config vim
./install-vim.sh

# tmux configs
cp ./.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

# custom shell function
cat ./shell_functions >> ~/.zshrc  # TODO: prevent duplicate appends


echo "DON'T FORGET TO `source ~/.zshrc` "
