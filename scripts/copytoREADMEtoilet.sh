#!/bin/bash

# Path to the FIGlet fonts directory
fontDir="/usr/share/figlet/fonts"
#
# Text to display
#inputText="The quick brown fox jumps over the lazy dog"
inputText="The quick brown fox jumps over the lazy dog"


# Check if the fonts directory exists
if [ ! -d "$fontDir" ]; then
    echo "Error: Font directory $fontDir does not exist."
    exit 1
fi

# Get a list of filenames in the font directory and remove lines with hyphens, then strip file extensions
#var=$(ls "$fontDir" | sed '/-/d' | sed 's/\..*$//g')
var=$(ls "$fontDir" | sed 's/\.[^.]*$//')


# Iterate over each font file
for i in ${var[@]}; do
    echo -e "\n\n### $i"
    echo -e "\`\`\`"
    figlet -lkf "$i" -w "$(tput cols)" "$inputText" | toilet --rainbow -w "$(tput cols)" -d "$fontDir" -f term    
    echo -e "\`\`\`"
done
