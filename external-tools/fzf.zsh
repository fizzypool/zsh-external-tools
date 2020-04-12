if [[ -d "${HOME}/.fzf" ]]; then
  _base_dir="${HOME}/.fzf"
fi

if [[ -d "${_base_dir}" ]]; then
  # Setup `$PATH`.
  _bin_dir="${_base_dir}/bin"
  if [[ -d "${_bin_dir}" ]]; then
    if [[ ! "$PATH" == *${_bin_dir}* ]]; then
      export PATH="$PATH:${_bin_dir}"
    fi
  fi
  unset _bin_dir

  # Setup `$MANPATH`.
  _man_dir="${_base_dir}/man"
  if [[ -d "${_man_dir}" && ! "$MANPATH" == *${_man_dir}* ]]; then
    export MANPATH="$MANPATH:${_man_dir}"
  fi
  unset _man_dir

  _shell_dir="${_base_dir}/shell"
  if [[ -d "${_shell_dir}" ]]; then
    # Enable auto-completion.
    [[ $- == *i* ]] && source "${_shell_dir}/completion.zsh" 2> /dev/null
    # Setup key-bindings.
    source "${_shell_dir}/key-bindings.zsh"
  fi
  unset _shell_dir
  unset _base_dir
elif [[ -d "/usr/share/doc/fzf" ]]; then
  # Enable auto-completion.
  if [[ -f "/usr/share/doc/fzf/completion.zsh" ]]; then
    source "/usr/share/doc/fzf/completion.zsh"
  fi
  # Setup key-bindings.
  if [[ -f "/usr/share/doc/fzf/key-bindings.zsh" ]]; then
    source "/usr/share/doc/fzf/key-bindings.zsh"
  fi
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
