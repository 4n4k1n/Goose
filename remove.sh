#!/bin/bash

remove_line_from_file() {
    local pattern="$1"
    local file="$2"
    if [ -f "$file" ]; then
        temp_file=$(mktemp)
        grep -v "$pattern" "$file" > "$temp_file"
        mv "$temp_file" "$file"
    fi
}

remove_line_from_file "alias cat='printf \"meow\\n\"'" ~/.bash_aliases
remove_line_from_file "alias cat='printf \"meow\\n\"'" ~/.zshrc

remove_line_from_file "alias ls='echo \"Segmentation fault\"'" ~/.bash_aliases
remove_line_from_file "alias ls='echo \"Segmentation fault\"'" ~/.zshrc

remove_line_from_file "curl -s https://uselessfacts.jsph.pl/random.txt?language=en" ~/.bashrc
remove_line_from_file "curl -s https://uselessfacts.jsph.pl/random.txt?language=en" ~/.zshrc

if [ -f ~/goose.zip ]; then
    rm ~/goose.zip
fi

if [ -d ~/goose ]; then
    rm -rf ~/goose
fi
