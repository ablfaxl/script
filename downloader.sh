#!/bin/bash

# Define the name of the file containing the download links
link_file="download_links.txt"

# Check if the link file exists
if [ ! -f "$link_file" ]; then
    echo "File '$link_file' does not exist."
    exit 1
fi

# Read each line in the file and download the corresponding file
while IFS= read -r link; do
    # Use wget to download the file
    wget "$link"
done < "$link_file"

echo "All downloads completed."
