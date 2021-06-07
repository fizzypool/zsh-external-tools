if [ $commands[pyenv] ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  if [[ $OSTYPE == darwin* ]]; then
    # Note: Manual init to speedup
    export PATH=":${PYENV_ROOT}/shims:${PATH}"
    export PYENV_SHELL=zsh
    source "/usr/local/Cellar/pyenv/*/completions/pyenv.zsh"
    command pyenv rehash 2>/dev/null
    function pyenv() {
      local command
      command="${1:-}"
      if [ "$#" -gt 0 ]; then
        shift
      fi

      case "$command" in
      rehash|shell)
        eval "$(pyenv "sh-$command" "$@")";;
      *)
        command pyenv "$command" "$@";;
      esac
    }
  elif [[ $OSTYPE == linux* ]]; then
    eval $(pyenv init -)
  fi
fi
