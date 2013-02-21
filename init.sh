#!/bin/bash

function setdir {
 DIR="${BASH_SOURCE%/*}"
 if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
}

setdir
source "${DIR}/pp.sh"
source "${DIR}/log.sh"
source "${DIR}/utils.sh"

