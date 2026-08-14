#!/bin/bash
set -e

[ -z "$PREFIX" ] && echo "Error: This script must be run in Termux!" && exit 1

curl -sSL https://raw.githubusercontent.com/frontenrahan/Termux-Youtube-Downloader/refs/heads/main/termux-url-opener -o $PREFIX/bin/termux-url-opener
chmod +x $PREFIX/bin/termux-url-opener

mkdir -p ~/bin 2>/dev/null
ln -sf $PREFIX/bin/termux-url-opener ~/bin/termux-url-opener 2>/dev/null || true

echo ""
echo "✓ Installation complete!"
echo ""
echo "Usage:"
echo "  termux-url-opener <youtube_url>"
echo ""
echo "Audio: /storage/emulated/0/Download/music/"
echo "Video: /storage/emulated/0/Download/videos/"
