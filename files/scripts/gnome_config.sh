#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

# Your code goes here.
echo 'Gnome Configurer v0.0.3'
echo 'this tweaks things to be more like ChromiumOS'

dconf update

# ==============================================================================
# CeriumOS Configuration Script
# ==============================================================================

# Define the correct UUID for the AppIndicator extension
APPINDICATOR_UUID='appindicatorsupport@rgcjonas.gmail.com'

# ==============================================================================
# Enable extensions
# ==============================================================================
# Ensure all UUIDs here are correct for setting the enabled-extensions list.
gsettings set org.gnome.shell enabled-extensions "['dash-to-panel@jderose9.github.com', 'arcmenu@arcmenu.com', 'just-perfection-desktop@just-perfection', 'user-theme@gnome-shell-extensions.gcampax.github.com', '$APPINDICATOR_UUID']"

# ==============================================================================
# General GNOME settings
# ==============================================================================
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru'
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru'

# ==============================================================================
# Configure Dash to Panel
# ==============================================================================
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com position-center true
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com intelligent-hiding false
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com show-show-apps-button false

# ==============================================================================
# Configure GNOME Desktop settings (built-in)
# ==============================================================================
gsettings set org.gnome.desktop.interface enable-hot-corners false

# ==============================================================================
# Configure Just Perfection (remaining settings)
# ==============================================================================
gsettings set org.gnome.shell.extensions.just-perfection disable-activities-button true
gsettings set org.gnome.shell.extensions.just-perfection startup-status 'desktop'

# ==============================================================================
# Configure Arc Menu
# ==============================================================================
gsettings set org.gnome.shell.extensions.arcmenu menu-layout 'arcmenu-layout-default'

# ==============================================================================
# Configure GNOME Shell App Grid for smaller menu
# ==============================================================================
gsettings set org.gnome.shell.app-grid rows 4
gsettings set org.gnome.shell.app-grid columns 4

# ==============================================================================
# Configure GNOME Desktop settings (more built-in)
# ==============================================================================
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/chromiumos-wallpaper.jpg'

# ==============================================================================
# Optional: Configure more settings
# ==============================================================================
# (Add more settings here if needed)
