var=$(ls . | sed '/-/d' | sed 's/\..*$//g') &&
	for i in ${var[@]}; do
		echo "\n\n### $i";
		echo "\`\`\`";
		figlet -ckf $i -w $(tput cols) Encrypted | toilet --metal -w $(tput cols) -f term;
		echo "\`\`\`"; done
