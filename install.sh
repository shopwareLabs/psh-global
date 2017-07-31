#!/bin/bash

# Copy file to /usr/local/bin and rename it to psh
cp psh_global.sh /usr/local/bin/psh

# Create .psh dir
mkdir -p ~/.psh

# Place psh_bash_autocomplete.sh in .psh dir
cp psh_bash_autocomplete.sh ~/.psh/psh_bash_autocomplete.sh

# Register it as source
if [[ -f ~/.zshrc ]] 
then
    cp zsh_source.sh ~/.psh/zsh_source.sh
#    echo "autoload bashcompinit" >> ~/.zshrc
#    echo "bashcompinit" >> ~/.zshrc
    echo "source ~/.psh/zsh_source.sh" >> ~/.zshrc
fi

if [[ -f ~/.bashrc ]] 
then
    echo "source ~/.psh/psh_bash_autocomplete.sh" >> ~/.bashrc
fi
