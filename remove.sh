#!/bin/bash

remove_line() {
    local pattern="$1"
    local file="$2"
    if [ -f "$file" ]; then
        temp_file=$(mktemp)
        grep -v "$pattern" "$file" > "$temp_file"
        chmod +w "$file" 2>/dev/null
        mv "$temp_file" "$file"
    fi
}

chmod +w ~/.bashrc 2>/dev/null
chmod +w ~/.zshrc 2>/dev/null

remove_line "printf '\n%.0s' {1..200}" ~/.bashrc
remove_line "printf '\n%.0s' {1..200}" ~/.zshrc

remove_line "alias cat='printf \"meow\n\"'" ~/.bashrc
remove_line "alias cat='printf \"meow\n\"'" ~/.zshrc
remove_line "alias rm='open ~/goose/goose.app'" ~/.bashrc
remove_line "alias rm='open ~/goose/goose.app'" ~/.zshrc
remove_line "alias ls='echo \"Segmentation fault\"'" ~/.bashrc
remove_line "alias ls='echo \"Segmentation fault\"'" ~/.zshrc
remove_line "alias cc='telnet towel.blinkenlights.nl'" ~/.bashrc
remove_line "alias cc='telnet towel.blinkenlights.nl'" ~/.zshrc
remove_line "curl -s https://uselessfacts.jsph.pl/random.txt" ~/.bashrc
remove_line "curl -s https://uselessfacts.jsph.pl/random.txt" ~/.zshrc
remove_line "alias cd='bash ~/masterplan.sh'" ~/.zshrc
remove_line "alias cd='bash ~/masterplan.sh'" ~/.bashrc

rm -f ~/masterplan.sh
rm -f ~/goose.zip
rm -rf ~/goose
