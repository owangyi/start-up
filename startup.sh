#!/bin/bash

# load common function
root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
module_dir="$root_dir/modules"

source "${root_dir}/helper.sh"

# welcome
welcome "
         __    __     _                            _
        / / /\ \ \___| | ___ ___  _ __ ___   ___  | |_ ___
        \ \/  \/ / _ \ |/ __/ _ \| '_ \` _ \ / _ \ | __/ _ \

         \  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) |
          \/  \/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/

        " "${blue}"

# global installation
source "${module_dir}/git.sh"

source "${module_dir}/brew.sh"

source "${module_dir}/wechat.sh"

# which team
which_team

# team specification
if [[ "${team}" == backend ]]; then
    echo 'backend'

    source "${module_dir}/composer.sh"
#elif [  ]; then
#    # ...
#elif [  ]; then
    # ...
fi


# finished
