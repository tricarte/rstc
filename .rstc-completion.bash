#!/usr/bin/env bash

# https://stackoverflow.com/questions/5302650/multi-level-bash-completion

_rstc_complete() {
  local cur prev

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  prev=${COMP_WORDS[COMP_CWORD - 1]}

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=($(compgen -W "backup forget create edit init go restore snapshots" -- $cur))
  elif [ "$COMP_CWORD" -ge 2 ]; then
    case "$prev" in
    "backup" | "forget" | "edit" | "init" | "go" | "restore" | "snapshots")
      COMPREPLY=($(compgen -W "$(find "$HOME/.config/rustic/" -type f -name '*.toml' -exec basename {} .toml \;)" -- $cur))
      ;;
    *)
      COMPREPLY=($(compgen -W "$(find "$HOME/.config/rustic/" -type f -name '*.toml' -exec basename {} .toml \;)" -- $cur))
      ;;

    esac
  fi

  return 0
}
complete -F _rstc_complete rstc
