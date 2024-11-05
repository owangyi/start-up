#!/bin/bash

done_file=~/.$(basename "${BASH_SOURCE[0]}").done

[ -f "$done_file" ] && return

brew install git

git_config

touch "$done_file"

git_config()
{
  if [ [-z "${user_name}" ] ]; then
      read -rp "What is your user name? (e.g. xiangru.sima): " user_name || true
  fi

  if [[ -z "${user_email}" ]]; then
      read -rp "What is your user email? (e.g. xiangru.sima@rightcapital.com): " user_email || true
  fi

  git config --global user.name $user_name
  git config --global user.email $user_email
}
