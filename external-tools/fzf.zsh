# Enable auto-completion.
if [[ -f "/usr/share/fzf/completion.zsh" ]]; then
  source "/usr/share/fzf/completion.zsh"
fi

# Setup key-bindings.
if [[ -f "/usr/share/fzf/key-bindings.zsh" ]]; then
  source "/usr/share/fzf/key-bindings.zsh"

  # <Alt+h>: trigger fzf history widget
  bindkey '^[h' fzf-history-widget
  # <Alt+h>: trigger fzf cd widget
  bindkey '^[c' fzf-cd-widget
  # <Alt+h>: trigger fzf file widget
  bindkey '^[f' fzf-file-widget
fi

if [[ $commands[fzf] ]]; then

  # Set the default source for `fzf`
  if [[ $commands[ag] ]]; then
    export FZF_DEFAULT_COMMAND='ag -g ""'
  elif [[ $commands[rg] ]]; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
  fi

  # Apply the command to CTRL-T as well
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

fi
