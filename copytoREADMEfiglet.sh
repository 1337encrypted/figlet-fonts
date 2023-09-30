var=$(ls . | sed '/-/d' | sed 's/\..*$//g') &&
	for i in ${var[@]}; do
		echo "\n\n### $i";
		echo "\`\`\`";
		figlet -lf $i -w 170 1337Encrypted;
		echo "\`\`\`"; done
