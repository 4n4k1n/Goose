#!/bin/bash

# Install xdotool if not present (works for Debian/Ubuntu)
sudo apt-get update
sudo apt-get install -y xdotool

# For other distributions, uncomment the appropriate line:
# sudo pacman -S xdotool        # Arch Linux
# sudo dnf install xdotool      # Fedora
# sudo zypper install xdotool   # openSUSE

# Go to home directory and clone the repo
cd "$HOME"
git clone https://github.com/nolernroyal/global-capslock.git
cd global-capslock

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install requirements in the virtual environment
pip install -r requirements.txt
pip install -e .

# Run the client
python client.py

# Note: The script will stay running with the client
# To stop, use Ctrl+C or close the terminal
# The virtual environment will deactivate when the terminal closes