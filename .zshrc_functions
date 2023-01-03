# ZSH_THEME="tjkirch"
# plugins=(git zsh-autosuggestions zsh-navigation-tools zsh-syntax-highlighting)

function cl {
  builtin cd "$@" && ls -F
}

function dockersh {
  sudo docker exec -it `sudo docker ps | sed -n "/$1/p" | awk '{print $1}'` bash
}
