#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

# Your code goes here.
echo 'Gnome Configurer v0.0.2'
echo 'this tweaks things to be more like ChromiumOS'

# ==============================================================================
# CeriumOS Configuration Script
# This script applies gsettings to configure the desktop environment for a
# ChromiumOS-like experience on low-end hardware, with animations enabled.
# ==============================================================================

# ==============================================================================
# Enable extensions
# ==============================================================================
# The `gnome-extensions` module in BlueBuild will have already installed them.
gsettings set org.gnome.shell enabled-extensions "['dash-to-panel@jderose9.github.com', 'arcmenu@arcmenu.com', 'just-perfection-desktop@just-perfection', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'appindicator@gnome-shell.extensions.gnome.org']"

# ==============================================================================
# General GNOME settings
# ==============================================================================
# Window animations will remain enabled by default.
#
# Set the desired icon theme (Yaru requested by user)
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'

# Set a different cursor theme (optional, for branding)
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'

# Configure system-wide appearance settings
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru'
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru'

# ==============================================================================
# Configure Dash to Panel
# ==============================================================================
# Move the panel to the bottom and center the icons for a ChromiumOS-like look.
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com position-center true

# Configure panel visibility and behavior
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com dock-fixed false # Hide the panel when an app is maximized
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com intelligent-hiding false # Hide the panel when an app overlaps it
gsettings set org.gnome.shell.extensions.dash-to-panel@jderose9.github.com show-show-apps-button false # Hide the "Show Applications" button

# ==============================================================================
# Configure GNOME Desktop settings (built-in)
# ==============================================================================
# Disable the hot corner using a built-in gsetting, no extension needed for this specific feature.
gsettings set org.gnome.desktop.interface enable-hot-corners false

# ==============================================================================
# Configure Just Perfection (remaining settings)
# ==============================================================================
# Use Just Perfection to disable the Activities button and force desktop startup.
gsettings set org.gnome.shell.extensions.just-perfection disable-activities-button true
gsettings set org.gnome.shell.extensions.just-perfection startup-status 'desktop'

# ==============================================================================
# Configure Arc Menu
# ==============================================================================
# Ensure the Arc Menu button is visible (remove hide setting).
gsettings set org.gnome.shell.extensions.arcmenu menu-layout 'arcmenu-layout-default'

# ==============================================================================
# Configure GNOME Shell App Grid for smaller menu
# ==============================================================================
# This adjusts the number of rows and columns in the app grid, making it smaller.
gsettings set org.gnome.shell.app-grid rows 4
gsettings set org.gnome.shell.app-grid columns 4

# ==============================================================================
# Configure GNOME Desktop settings (more built-in)
# ==============================================================================
# Ensure the background is set to your custom wallpaper.
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/chromiumos-wallpaper.jpg'

# ==============================================================================
# Optional: Configure more settings
# ==============================================================================
# Feel free to add more gsettings here to further customize the desktop.
