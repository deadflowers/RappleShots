# RappleShots by Ray

**RappleShots** is a lightweight ImageMagick-based tool for Linux that generates iOS-style framed screenshots with drop shadows—ideal for presentations, documentation, or app previews.

---

## Overview

- Converts screenshots (from `gnome-screenshot`, `Flameshot`, etc.) into polished, iOS-like styled images.
- Supports bulk batch processing via Nautilus or Nemo context menu integration.
- Designed for speed: handles dozens of images before graphical tools like GIMP even open.

---

## Version 2.04 Highlights

- Enhanced CLI options: support for customizing output suffix, shadow intensity, and batch processing.
- Improved instructions for integration with Nautilus, Nemo, and Unity.
- Sample images and demo page updated to use new CloudFront domain: `d3uaz5bp3928j6.cloudfront.net`

---

## Installation

1. Copy `rappleshots.sh` into Nautilus or Nemo scripts folder:

~/.local/share/nautilus/scripts/

bash

2. Make it executable:
```bash
chmod +x rappleshots.sh
```
    To enable: right-click any image → Scripts → RappleShots.

    Works with GNOME, Unity, Nemo, and XFCE.

Usage

```./rappleshots.sh [options] file1.png file2.jpg ...```

Options:

    -s SUFFIX – Custom output suffix (default: _rappleshot)

    -b LEVEL – Shadow blur level (default: 80x20+0+15)

    -h, --help – Show usage instructions

Example

```./rappleshots.sh -s ios -b "100x30+0+20" screenshot1.png screenshot2.jpg```

Generates: screenshot1_ios.png, screenshot2_ios.png
Sample Images & Demo

Visit the live demo to view examples.
Sample assets hosted at d3uaz5bp3928j6.cloudfront.net/assets/test/rappleshots/.
License & Author

Created by
Ray Anthony
. Licensed under the One‑World License: free, open‑source, and built with ❤️.
