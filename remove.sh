#!/bin/bash

remove_alias() {
    local alias_command="$1"
    local alias_file="$2"
    if grep -q "$alias_command" "$alias_file"; then
        sed -i '' "/$alias_command/d" "$alias_file"
        echo "Removed: $alias_command from $alias_file"
    else
        echo "Alias '$alias_command' not found in $alias_file"
    fi
}

remove_alias "alias cat='printf \"meow\n\"'" ~/.bash_aliases
remove_alias "alias cat='printf \"meow\n\"'" ~/.zshrc

remove_alias "alias ls='echo \"Segmentation fault\"'" ~/.bash_aliases
remove_alias "alias ls='echo \"Segmentation fault\"'" ~/.zshrc

remove_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.bash_aliases
remove_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.zshrc

remove_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.bashrc
remove_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.zshrc
