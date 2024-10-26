#!/bin/bash

done_file=~/.$(basename "$BASH_SOURCE[0]" ).done

[ -f "$done_file" ] && return

xcode-select --install || true

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew analytics off && brew update

touch "$done_file"
