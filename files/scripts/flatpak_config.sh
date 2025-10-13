#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Flatpak Configurer v0.0.1'

echo "Forcing 'flathub' remote to only use verified apps subset..."

# Modify the system-wide 'flathub' remote to only show verified apps
# The --system flag is important to modify the main installation remote.
flatpak remote-modify --system --subset=verified flathub

echo "Flatpak 'flathub' remote successfully modified to show only verified applications."

