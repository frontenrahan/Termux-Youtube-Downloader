# Termux YouTube Downloader

[![Termux](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)](https://termux.com/)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtube.com)

A lightweight YouTube audio/video downloader for Termux with MP4-only format selection and automatic audio merging.

## Features

- 🎵 Download audio as MP3 (original bitrate)
- 🎬 Download video as MP4 (auto-converts webm)
- 🔄 Auto-merge video + audio when video-only format selected
- 📊 Clean format listing with sizes
- 🎧 Play audio in Termux (ffplay)
- 📱 Play with external player
- ⚡ Auto-installs dependencies
- 📤 Share from YouTube app directly

## Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/termux-youtube-downloader/main/install.sh | bash
```

Usage

Share from YouTube App

1. Open YouTube app
2. Tap Share on any video
3. Select Termux from share menu
4. Choose format and download

Manual Command

```bash
termux-url-opener https://youtu.be/VIDEO_ID
```

Example Session

```
~ $ termux-url-opener https://youtu.be/hc6CE4Rnjjs

AVAILABLE FORMATS
─────────────────

VIDEO
   1.  256x144   953.54KiB mp4
   2.  256x144   457.82KiB mp4
   3.  426x240   1.97MiB   mp4
   4.  426x240   752.94KiB mp4
   5.  640x360   3.73MiB   mp4
   6.  640x360   5.20MiB   mp4
   7.  640x360   1.29MiB   mp4
   8.  854x480   7.12MiB   mp4
   9.  854x480   1.97MiB   mp4
  10.  1280x720  11.80MiB  mp4
  11.  1280x720  3.22MiB   mp4
  12.  1920x1080 21.72MiB  mp4
  13.  1920x1080 5.20MiB   mp4

AUDIO
  14.  49k       753.67KiB m4a
  15.  48k       738.26KiB webm
  16.  130k      1.95MiB   m4a
  17.  100k      1.50MiB   webm

Select [7]: 12

Available audio formats for merging:
  14.  49k       753.67KiB m4a
  15.  48k       738.26KiB webm
  16.  130k      1.95MiB   m4a
  17.  100k      1.50MiB   webm

Select audio format [14]: 14

[>>] Video: video_1920_1080.mp4 (1920x1080 - 21.72MiB) [with audio from 49k]
[download] 100% of 21.72MiB

File: /storage/emulated/0/Download/videos/video_1920_1080.mp4
Size: 22M
Duration: 02:06

Options:
  1) Play with external player (default)
  2) Exit
```

File Locations

Type Location
Audio /storage/emulated/0/Download/music/
Video /storage/emulated/0/Download/videos/

Uninstall

```bash
rm -f $PREFIX/bin/termux-url-opener
rm -f ~/bin/termux-url-opener
```

Requirements

 • Termux
 • Internet connection
 • Storage permission (termux-setup-storage)
