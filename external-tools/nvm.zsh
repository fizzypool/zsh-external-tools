if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  
  # Load NVM
  if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
    source "/usr/local/opt/nvm/nvm.sh"
  elif [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]; then
    source "/opt/homebrew/opt/nvm/nvm.sh"
  fi
  
  # Load NVM completion
  if [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]; then
    source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
  elif [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ]; then
    source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  fi
fi
