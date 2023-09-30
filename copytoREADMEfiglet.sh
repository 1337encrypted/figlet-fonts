var=$(ls . | sed '/-/d' | sed 's/\..*$//g') &&
	for i in ${var[@]}; do
		echo "\n\n### $i";
		echo "\`\`\`";
		figlet -cf $i -w 120 Encrypted;
		echo "\`\`\`"; done
