if [ $commands[fasd] ]; then

  fasd_cache="${HOME}/.fasd-cache"

  if [ "$(command -v fasd)" -nt "${fasd_cache}" -o ! -s "${fasd_cache}" ]; then
    fasd --init auto >| "${fasd_cache}"
  fi

  source "${fasd_cache}"

  unset fasd_cache

fi
