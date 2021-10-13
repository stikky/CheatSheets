#!/bin/sh

# NOT YET FUNCTIONAL

echo "Starting program at $(date)" # Date will be substituted

echo "Running program $0 with $# arguments with pid $$"

# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" # works only in BASH
SCRIPT_DIR=$(readlink -f "$0")

echo "$SCRIPT_DIR"

# read -p "alias abc=:" shelllocation
# echo "$shelllocation"


SHELL_ZSH="/usr/bin/zsh"
SHELL_BASH="/usr/bin/bash"


if [ "$SHELL" = "$SHELL_BASH" ]; then
    # echo "$SHELL_BASH"
    echo "alias asdf" >> ~/.test_bashrc
    echo "Alias added to .bashrc"
elif [ "$SHELL" = "$SHELL_ZSH" ]; then
    # echo "$SHELL_ZSH"
    echo "alias asdf" >> ~/.test_zshrc
    echo "Alias added to .zshrc"
else
    echo "Shell $SHELL is not supported yet!"   # TODO: plz man install, raise ticket etc
fi



# TODO Change CSPATH in .cheatsheets by this script
