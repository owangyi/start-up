#!/usr/bin/env bash

done_file=~/.$(basename "${BASH_SOURCE[0]}").done

[ -f $done_file ] && return

brew install composer

composer config -g ...

touch $done_file


