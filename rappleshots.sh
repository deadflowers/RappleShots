#!/usr/bin/env bash
# RappleShots v2.04 — generate iOS‑style framed screenshots with drop shadow
# Usage: rappleshots.sh [-s SUFFIX] [-b BLUR] file1 [file2 …]

SUFFIX="_rappleshot"
BLUR="80x20+0+15"

help() {
  cat <<EOF
RappleShots v2.04
Usage: $0 [-s SUFFIX] [-b BLUR] image1 [image2 ...]
  -s SUFFIX    output filename suffix (default: $SUFFIX)
  -b BLUR      shadow blur (default: $BLUR)
  -h, --help   show this help
EOF
  exit 0
}

while (( "$#" )); do
  case "$1" in
    -s) SUFFIX="$2"; shift 2 ;;
    -b) BLUR="$2"; shift 2 ;;
    -h|--help) help ;;
    *) FILES+=("$1"); shift ;;
  esac
done

if [ ${#FILES[@]} -eq 0 ]; then
  help
fi

for picture in "${FILES[@]}"; do
  fname=$(basename "$picture")
  name="${fname%.*}"
  convert "$picture" \( +clone -background black -shadow "${BLUR}" \) \
    +swap -background transparent -layers merge +repage \
    "${name}${SUFFIX}.png"
done
