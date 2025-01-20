#!/bin/bash

remove_alias() {
    local alias_name="$1"
    local file="$2"
    if [ -f "$file" ]; then
        chmod +w "$file"
        sed -i "/alias ${alias_name}=/d" "$file"
    fi
}


remove_alias "cat" ~/.bashrc
remove_alias "cat" ~/.zshrc
remove_alias "rm" ~/.bashrc
remove_alias "rm" ~/.zshrc
remove_alias "ls" ~/.bashrc
remove_alias "ls" ~/.zshrc
remove_alias "cc" ~/.bashrc
remove_alias "cc" ~/.zshrc
remove_alias "pkill" ~/.bashrc
remove_alias "pkill" ~/.zshrc
remove_alias "cd" ~/.bashrc
remove_alias "cd" ~/.zshrc

sed -i '/curl.*uselessfacts\.jsph\.pl/d' ~/.bashrc
sed -i '/curl.*uselessfacts\.jsph\.pl/d' ~/.zshrc

sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' ~/.bashrc
sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' ~/.zshrc

rm -rf ~/goose ~/goose.zip ~/masterplan.sh

chmod +w ~/.bashrc
chmod +w ~/.zshrc

source ~/.bashrc
source ~/.zshrc
