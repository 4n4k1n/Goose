#!/bin/bash

echo "Download the file"
curl -L -o ~/goose.zip 'https://github.com/PaulicStudios/goose/archive/main.zip'

echo "Extract the file"
unzip -o ~/goose.zip -d ~/goose

echo "Start the app"
open ~/goose/goose.app

echo "Done!"
