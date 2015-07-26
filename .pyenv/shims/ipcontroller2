#!/usr/bin/env bash
set -e
[ -n "$PYENV_DEBUG" ] && set -x

program="${0##*/}"
if [ "$program" = "python" ]; then
  for arg; do
    case "$arg" in
    -c* | -- ) break ;;
    */* )
      if [ -f "$arg" ]; then
        export PYENV_DIR="${arg%/*}"
        break
      fi
      ;;
    esac
  done
fi

export PYENV_ROOT="/Users/mutayutaro/.pyenv"
exec "/usr/local/Cellar/pyenv/20150601/libexec/pyenv" exec "$program" "$@"
