#!/bin/bash
# sample imagemagick lines to reformat screen captures to have ios like framing and drop shadow
# a rappleshot component
# designed for use with nautilus to give context menu click method of highlight and swiftly (1 click) processing 
#   multiple image files of various extensions into cool Apple IOS Style Screen shots. Turn on drop shadow and effects 
#   the checkboxes basically for your gnome-screenshots utlity then reprocess with this tool. same as in my other repo
#   if you use nautlus/Unity/Gnome then drop this in $HOME/.gnome2/nautilus scripts/... without the extension and 
#   permission it root but executable
# by ray anthony 
# 5/1/2015
while [ "$#" -gt 0 ]; do
        picture="$1"
		filename=$(basename "$1")
		extension="${filename##*.}"
		filename="${filename%.*}"
		convert "$picture" \( +clone -background black -shadow 80x20+0+15 \) +swap -background transparent -layers merge +repage "${filename}_rappleshot.png"
        shift
done
