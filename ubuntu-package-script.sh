#!/bin/bash

# List of packages to install
packages=(
 #   package1
  #  package2
   # package3
    # Add more package names here
    samba
    curl
    git
    python3-pip
    #sublime-text
    chromium-browser
    synaptic
    apt-transport-https
    xclip
    terminator
    cifs-utils
    byobu
)

# Update package lists
sudo apt update

# Install packages
for package in "${packages[@]}"; do
    sudo apt install -y "$package"
done

sudo apt-get remove --purge libreoffice*