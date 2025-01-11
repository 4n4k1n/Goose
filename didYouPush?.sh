#! /bin/bash

read -p "Do you want to remove all .git folders? [Y/n] : " confirm

if [[ "$confirm" == "Y" ]]; then
    read -p "Are you really sure? [Y/n] : " confirm
    if [[ "$confirm" == "Y" ]]; then
        find / -type d  -name ".git" 2>/dev/null | while read gitFolder; do
            rm -rf "$gitFolder"
        done
    fi
fi
