#!/bin/bash

# Installation script for sysopctl

# Check if script is run with sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run with sudo" 
   exit 1
fi

# Set variables
SCRIPT_NAME="sysopctl"
INSTALL_DIR="/usr/local/bin"
MAN_DIR="/usr/local/share/man/man1"

# Copy main script
install -m 755 "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"

# Copy man page
install -m 644 "$SCRIPT_NAME.1" "$MAN_DIR/$SCRIPT_NAME.1"

# Compress man page
gzip "$MAN_DIR/$SCRIPT_NAME.1"

# Update man page database
mandb

echo "Installation of $SCRIPT_NAME complete!"
echo "You can now use '$SCRIPT_NAME --help' for usage information."
