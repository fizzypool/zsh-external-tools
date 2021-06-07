if [[ $OSTYPE == darwin* ]]; then
  if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
    echo "Loading"
    source "${HOME}/.iterm2_shell_integration.zsh"
  fi
fi
