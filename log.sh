#!/bin/bash

# Usage: log "LABEL" "MESG" ["color"]
function log {
  if [ $# -lt 2 ]; then
    log "ERROR" "Usage: log \"LABEL\" \"MESG\" [\"FGCOLOR\"]" "red"
  elif [ $# -eq 3 ]; then
    _FG="$(fgcolor)"
    fgcolor "$3"
    echo "[$1 | `date +%R`] $2"
    fgcolor "${_FG}"
  else
    echo "[$1 | `date +%R`] $2"
  fi
}
