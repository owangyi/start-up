#!/bin/bash

done_file=~/.$(basename "${BASH_SOURCE[0]}").done

[ -f "$done_file" ] && return

brew_cask_install wechat

touch "$done_file"
