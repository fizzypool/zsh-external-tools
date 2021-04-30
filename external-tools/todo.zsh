# PyEnv support
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# NVM support
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# Jabba support
[ -s "/Users/cl-alessandro-molari/.jabba/jabba.sh" ] && source "/Users/cl-alessandro-molari/.jabba/jabba.sh"

# GhcUp support
[ -f "/Users/cl-alessandro-molari/.ghcup/env" ] && source "/Users/cl-alessandro-molari/.ghcup/env" # ghcup-env

# Add Cargo to PATH.
export PATH="$HOME/.cargo/bin:$PATH"

# Add .NET Core SDK tools to PATH.
export PATH="$PATH:/Users/cl-alessandro-molari/.dotnet/tools"

# Add VMware tools to PATH.
export PATH="/Applications/VMware OVF Tool:${PATH}"

# Set pipenv maximum upper directory search for projects.
export PIPENV_MAX_DEPTH=100

function tracktime() {     
    start=$(gdate +%s%N)
    zsh -c $1
    end=$(gdate +%s%N)
    runtime=$(((end-start)/1000000000.0))
    echo "$runtime ms"     
}
