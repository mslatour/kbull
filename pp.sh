#!/bin/bash

PP_CURRENT_FGCOLOR="normal"
PP_CURRENT_BGCOLOR="normal"

function fgcolor {
  if [ $# -eq 0 ]; then
    echo $PP_CURRENT_FGCOLOR
  elif [ "$1" == "normal" ]; then
    echo -ne "\e[0m"
    PP_CURRENT_FGCOLOR="normal"
  else
    PP_CURRENT_FGCOLOR=$1
    local black='0'
    local red='1'
    local green='2'
    local yellow='3'
    local blue='4'
    local magenta='5'
    local cyan='6'
    local white='7'
    eval "tput setaf \${$1}"
  fi
}

function bgcolor {
  if [ $# -eq 0 ]; then
    echo $PP_CURRENT_BGCOLOR
  else
    PP_CURRENT_BGCOLOR=$1
    local black='0'
    local red='1'
    local green='2'
    local yellow='3'
    local blue='4'
    local magenta='5'
    local cyan='6'
    local white='7'
    eval "tput setab \${$1}"
  fi
}

function resetcolor {
  tput sgr0
}
