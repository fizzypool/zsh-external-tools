if [ $commands[fasd] ]; then

  fasd_cache="~/.fasd-cache"

  if [[ ! -d "${fasd_cache}" ]]; then
    mkdir -p "${fasd_cache}"
  fi

  if [ "$(command -v fasd)" -nt "${fasd_cache}" -o ! -s "${fasd_cache}" ]; then
    fasd --init auto >| "${fasd_cache}"
  fi

  source "${fasd_cache}"

  unset fasd_cache

fi
