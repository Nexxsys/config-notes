#!/bin/bash

# Prompt for source folder
# read -p "[?] Enter source folder path: " source_folder

# Check for the correct number of arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

source_folder="$1"
destination_folder="$2"

# Check if the source folder exists
if [ ! -d "$source_folder" ]; then
    echo "[!] Source folder '$source_folder' not found."
    exit 1
fi

# Prompt for destination folder
# read -p "[?] Enter destination folder path: " destination_folder

# Check if the destination folder exists
if [ ! -d "$destination_folder" ]; then
    echo "[!] Destination folder '$destination_folder' not found."
    exit 1
fi

# Perform the rsync operation
rsync -av --update "$source_folder/" "$destination_folder/"

echo "[+] Content updated from '$source_folder' to '$destination_folder'."
