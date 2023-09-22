# ONLY TESTED ON Mac OS
# INSTALL oh-my-zsh first before running this

set -x

# replace the default theme
sed -i '' -e 's/ZSH_THEME.*/ZSH_THEME="tjkirch"/' ~/.zshrc

# install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/psprint/zsh-navigation-tools
sed -i '' -e '/^plugins=/s/)$/\n  zsh-autosuggestions\n  zsh-navigation-tools\n  zsh-syntax-highlighting\n  z)/' ~/.zshrc
touch ~/.z
cd -

# custom shell function
cat ./shell_functions.sh >> ~/.zshrc  # TODO: prevent duplicate appends

# config vim
./install-vim.sh

# install tmux
brew install tmux 

# tmux configs
cp ./.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf


echo "RUN 'source ~/.zshrc'"
