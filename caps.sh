#!/bin/bash

cd "$HOME"
git clone https://github.com/nolernroyal/global-capslock.git
cd global-capslock
pip3 install -r requirements.txt
pip3 install -e .
nohup python3 client.py >/dev/null 2>&1 &
exit 1