# KAVA Images Setup Guide

## Overview
This repository serves images for the KAVA project via GitHub Pages. All images are accessible at `https://kava-bucharest.github.io/Public/images/`.

## Current Images

### Main Images
- `kava.png` - KAVA logo
- `matcha.png` - Matcha image
- `1.png` - Main image 1
- `940140136.jpg` - Background image
- `IMG_4301.jpg` - Photo image

### Gallery Images
- `gallery/IMG_4314.jpg`
- `gallery/photo_2025-08-09_17-29-20.jpg`
- `gallery/photo_2025-08-09_17-29-24.jpg`
- `gallery/photo_2025-08-09_17-29-28.jpg`
- `gallery/photo_2025-08-09_17-29-31.jpg`
- `gallery/photo_2025-08-09_17-29-35.jpg`

## Usage in KAVA Project

All image references in the KAVA project have been updated to use GitHub Pages URLs:

```javascript
// Instead of local imports like:
// import logoImage from "../assets/images/kava.png";

// Now using:
const logoImage = "https://kava-bucharest.github.io/Public/images/kava.png";
```

## Adding New Images

### Method 1: Using the Upload Script
```bash
cd /Users/ihor/workspace/github.com/KAVA-Bucharest/Public
./upload-images.sh new-image.jpg gallery/new-photo.png
```

### Method 2: Manual Upload
1. Copy your image to the appropriate folder in the Public repository
2. Commit and push:
```bash
git add images/new-image.jpg
git commit -m "Add new image"
git push origin main
```

## GitHub Pages Setup

To enable GitHub Pages:
1. Go to repository Settings
2. Navigate to Pages section
3. Select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Save

## Benefits

1. **Reduced Bundle Size**: Images are no longer bundled with the React app
2. **Faster Loading**: Images are served from GitHub's CDN
3. **Easy Management**: Centralized image storage
4. **Version Control**: All images are tracked in Git
5. **Global Access**: Images are accessible from anywhere

## URL Structure

All images follow this pattern:
`https://kava-bucharest.github.io/Public/images/[filename]`

For gallery images:
`https://kava-bucharest.github.io/Public/images/gallery/[filename]`
