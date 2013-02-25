#!/bin/bash

LOG_OUTPUT=1

# Usage: log "LABEL" "MESG" ["color"]
function log {
  if [ "$LOG_OUTPUT" -eq 1 ]; then
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
  fi
}

function setoutput {
  if [ $# -gt 0 -a "$1" == "0" ]; then
    LOG_OUTPUT=0
  else
    LOG_OUTPUT=1
  fi
}
