if [ $commands[sudo] ]; then

  abbrev-alias S="sudo" # Uppercase because lowercase is abbrev of `fasd`.

  sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
      LBUFFER="${LBUFFER#sudo }"
    elif [[ $BUFFER == $EDITOR\ * ]]; then
      LBUFFER="${LBUFFER#$EDITOR }"
      LBUFFER="sudoedit $LBUFFER"
    elif [[ $BUFFER == sudoedit\ * ]]; then
      LBUFFER="${LBUFFER#sudoedit }"
      LBUFFER="$EDITOR $LBUFFER"
    else
      LBUFFER="sudo $LBUFFER"
    fi
  }

  zle -N sudo-command-line
  bindkey "\es" sudo-command-line

fi
