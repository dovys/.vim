#! /bin/bash
# https://raw.githubusercontent.com/jessfraz/.vim/master/update.sh
set -e

git submodule update --init --recursive
git submodule foreach git pull --recurse-submodules origin master
