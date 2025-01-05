#! /bin/bash

find / -type d  -name ".git" 2>/dev/null | while read gitFolder; do
    rm -rf "$gitFolder"
done