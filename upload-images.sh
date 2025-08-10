#!/bin/bash

# Script to upload new images to KAVA Public repository
# Usage: ./upload-images.sh [image1.jpg] [image2.png] ...

REPO_PATH="/Users/ihor/workspace/github.com/KAVA-Bucharest/Public"

if [ $# -eq 0 ]; then
    echo "Usage: $0 [image1.jpg] [image2.png] ..."
    echo "Example: $0 new-image.jpg gallery/new-photo.png"
    exit 1
fi

cd "$REPO_PATH"

echo "Uploading images to KAVA Public repository..."

for image in "$@"; do
    if [ -f "$image" ]; then
        echo "Adding $image..."
        git add "$image"
    else
        echo "Warning: $image not found, skipping..."
    fi
done

echo "Committing changes..."
git commit -m "Add new images: $*"

echo "Pushing to GitHub..."
git push origin main

echo "Done! Images will be available at:"
echo "https://kava-bucharest.github.io/Public/"
echo ""
echo "Individual image URLs:"
for image in "$@"; do
    if [ -f "$image" ]; then
        echo "https://kava-bucharest.github.io/Public/$image"
    fi
done
