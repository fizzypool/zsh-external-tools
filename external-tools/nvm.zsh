if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
    source "/usr/local/opt/nvm/nvm.sh"
  fi
  if [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ]; then
    source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  fi
fi
