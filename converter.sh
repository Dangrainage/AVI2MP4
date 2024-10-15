# Make a mp4s folder If It isn't already there
mkdir -p mp4s

# Looks for all .AVI files in the directory
for file in *.AVI; do
    # Picks the names of .AVI files
    base_name=$(basename "$file" .AVI)
    
    # Places the files into the mp4s directory
    ffmpeg -i "$file" -c:v libx264 -c:a aac "mp4s/${base_name}.mp4"
done
