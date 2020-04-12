if [[ $commands[pet] ]]; then

  function pet-select() {
    BUFFER=$(pet search --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle redisplay
  }
  zle -N pet-select

  stty -ixon

  # <Alt+s>: trigger snippet autocompletion
  bindkey '^[s' pet-select

fi
