#!/bin/bash

# Replace with the path to your extensions list file
EXTENSIONS_FILE="./vscode-extensions.txt"

while IFS= read -r extension
do
  echo "Installing $extension"
  code --install-extension "$extension" --force
done < "$EXTENSIONS_FILE"

echo "All extensions from the list have been installed."

