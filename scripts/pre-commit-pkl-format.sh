#!/usr/bin/env bash

set -u

RED='\033[0;31m'
NO_COLOUR='\033[0m'

pkl format --diff-name-only .
exit_code=$?

if [ "$exit_code" -ne 0 ]; then
  echo
  echo -e "${RED}Your code is not in a canonical format!${NO_COLOUR}"
  echo
  echo -e "${RED}To apply these changes run the following command from the root of the repo:${NO_COLOUR}"
  echo "pkl format --write ."
  echo
  exit 1
fi
