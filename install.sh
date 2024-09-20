#!/bin/bash

# Define variables
LIB_NAME="torify.so"
SRC_FILE="torify.c"
INSTALL_DIR="$HOME/Torify"
OUTPUT_BIN="torify"

# Create the installation directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Compile the shared library (assuming you have a torify.c file)
gcc -fPIC -shared -ldl -D_GNU_SOURCE "$SRC_FILE" -o "$INSTALL_DIR/$LIB_NAME"

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "[!] Error: Compilation of $SRC_FILE failed."
    exit 1
fi

# Copy the torify script to /usr/bin
sudo cp "$OUTPUT_BIN" /usr/bin/
sudo chmod +x /usr/bin/$OUTPUT_BIN

# Provide feedback to the user
echo "[+] Installed $OUTPUT_BIN to /usr/bin/"
echo "[+] Installation completed successfully!"
