#!/usr/bin/env bash

modules_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null 2>&1 && pwd)"

source "${modules_dir}/../helper.sh"

brew install git

git_config



