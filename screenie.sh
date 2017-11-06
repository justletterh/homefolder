#!/bin/bash
#rm -rf image.png
#shutter -s -o /tmp/image.png
read -r G < <(slop -f "%g");sleep .5
import -window root -crop $G /tmp/image.png
xclip -i /dev/null
xclip -selection clipboard -t image/png -i /tmp/image.png && rm -rf /tmp/image.png0
#rm -rf ~/.cache/shutter/

