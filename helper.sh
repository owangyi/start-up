#!/bin/bash

: "${team:=}"
: "${username:=}"
: "${email:=}"

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

git_config()
{
  read -rp "Please input your username and email for your git" username email

  git config -g user.name $username
  git config -g user.email $email
}
