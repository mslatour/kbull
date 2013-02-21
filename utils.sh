#!/bin/bash

function run {
  log "RUN" "$1" "green"
  eval "$1"
}

function run_safe {
  if [ $# -eq 0 ]; then
    exit 255
  elif [ $# -eq 1 ]; then
    run "$1"
  elif [ ! -e "$2" ]; then
      run "$1"
  else
    log "SKIP" "$1" "yellow"
  fi
}

function file_len {
  log "INFO" "$1 has `wc -l $1 | awk '{print $1}'` lines." "blue"
}

function begin {
  if [ $# -eq 0 ]; then
    T1=`date +%s`
    log "BEGIN" "" "magenta"
  else
    eval "T1_$(echo $1 | sed 's/ /_/g')=`date +%s`"
    log "BEGIN $1" "" "magenta"
  fi
}

function end {
  local T2=`date +%s`
  if [ $# -eq 0 ]; then
    log "END" "Total execution time: `expr $T2 - $T1` seconds." "magenta"
  else
    eval "local T1=\$T1_$(echo $1 | sed 's/ /_/g')"
    log "END $1" "Total execution time: `expr $T2 - $T1` seconds." "magenta"
  fi
}
