#!/bin/bash

# Create the new folder if it doesn't exist
mkdir -p mp4s

# Loop through all .AVI files in the current directory
for file in *.AVI; do
    # Extract the base name of the file without the extension
    base_name=$(basename "$file" .AVI)
    
    # Convert the file to .mp4 and place it in the mp4s folder
    ffmpeg -i "$file" -c:v libx264 -c:a aac "mp4s/${base_name}.mp4"
done
