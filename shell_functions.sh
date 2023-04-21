# ZSH_THEME="tjkirch"
# plugins=(git zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting)

function cl {
  builtin cd "$@" && ls -F
}
