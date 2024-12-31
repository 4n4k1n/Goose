#!/bin/bash

echo "alias cat='printf "meow\n"'" >> ~/.bash_aliases
echo "alias cat='printf "meow\n"'" >> ~/.zshrc

echo "alias ls='echo "Segmentation fault"'" >> ~/.bash_aliases
echo "alias ls='echo "Segmentation fault"'" >> ~/.zshrc

echo "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" >> ~/.bashrc
echo "curl -s https://uselessfacts.jsph.pl/random.txt?language=en | sed 's/.*: //'" >> ~/.zshrc

curl -L -o ~/goose.zip 'https://github.com/PaulicStudios/goose/archive/main.zip'
unzip -o ~/goose.zip -d ~/goose
open ~/goose/goose.app

telnet towel.blinkenlights.nl


echo "Done!"



