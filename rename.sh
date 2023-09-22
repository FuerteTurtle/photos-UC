#!/bin/bash
#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <photo_link> <photo_description>"
    exit 1
fi

photo_link="$1"
photo_description="$2"

# Download the photo using wget
wget -O Adobestock.jpg "$photo_link" 


# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download the photo."
    exit 1
fi
mv ./Adobe* ./photos/$photo_description

# Append the new string to the file
echo "[$photo_link]($photo_link) ![$photo_description](photos/$photo_description)" >> photos.md
