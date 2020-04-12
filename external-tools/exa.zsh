if [ $commands[exa] ]; then

  alias l="exa -bgh --classify"
  alias ll="ll1"
  alias lr="l -R"
  alias la="l -a"
  alias lla="ll -a"

  alias l1="l -L 1"
  alias l2="l -L 2"
  alias l3="l -L 3"
  alias l4="l -L 4"
  alias lx="l -L"

  alias ll1="l -l -T -L 1"
  alias ll2="l -l -T -L 2"
  alias ll3="l -l -T -L 3"
  alias ll4="l -l -T -L 4"
  alias llx="l -l -T -L"

else # Fallback using ls

  if [[ $OSTYPE == darwin* && $commands[gls] ]]; then
    alias l="gls --color=auto"
  elif [[ $OSTYPE == linux* ]]; then
    alias l="ls --color=auto"
  fi

  alias ll="l -lshF"
  alias lr="l -lshFR"
  alias la="ll -a"

fi
