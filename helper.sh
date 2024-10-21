#!/bin/bash

: "${team:=}"

blue=$(tput setaf 4)
reset=$(tput sgr0)

welcome()
{
  printf "%s$1%s\n" "$2" "${reset}"
}

which_team()
{
  if [[ -z "${team}" ]]; then
      PS3="Which team are you in? "
      select team in frontend backend devops
      do
        break
      done
  fi
}
