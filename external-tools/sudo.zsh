if [ $commands[sudo] ]; then

  abbrev-alias S="sudo"

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

  # <Alt+Shift+s>: insert sudo in the commandline
  bindkey "^[S" sudo-command-line

fi
