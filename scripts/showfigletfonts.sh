#!/bin/bash
# Source this file in bashrc to use the functions
# source /usr/share/figlet/scripts/showfigletfonts

function showfigletfonts() {
    # Check if user provided input text
    if [ -z "$1" ]; then
        echo "Error: No text provided."
        echo "Usage: showfigletfonts <text>"
        return 1
    fi

    local font="$1"
    local fontDir="/usr/share/figlet/fonts/"
    
    # Check if the font directory exists
    if [ ! -d "$fontDir" ]; then
        echo "Error: Font directory $fontDir does not exist."
        return 1
    fi

    # Get a list of filenames in the font directory
    local files=($(ls "$fontDir"))

    # Iterate over each file in the list
    for file in "${files[@]}"; do
        local fontName="${file%.*}" # Strip the file extension
        
        # Print the name of the font
        printf "\n\n%s\n" "$fontName"
        
        # Use figlet to create an ASCII art of the provided text
        figlet -ckf "$fontDir/$file" -w "$(tput cols)" "$font"
    done
}
