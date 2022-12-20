#!/usr/bin/env bash

# https://stackoverflow.com/questions/5302650/multi-level-bash-completion

# have wpsite &&
_backupstic_complete()
{
  local cur prev

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  prev=${COMP_WORDS[COMP_CWORD-1]}

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "backup forget create edit init" -- $cur) )
  elif [ "$COMP_CWORD" -eq 2 ]; then
    case "$prev" in
      "backup"|"forget"|"edit"|"init")
          COMPREPLY=($( compgen -W "$(find "$HOME/.config/rustic/" -type f -name '*.toml' -exec basename {} .toml \;)" -- $cur ) )
        ;;
      *)
        ;;
    esac
  fi

  return 0
}
complete -F _backupstic_complete backupstic
complete -F _backupstic_complete upstic
