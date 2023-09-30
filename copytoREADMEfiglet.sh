var=$(ls . | sed '/-/d' | sed 's/\..*$//g') &&
	for i in ${var[@]}; do
		echo "\n\n### $i";
		echo "\`\`\`";
		figlet -lf $i -w 120 Encrypted;
		echo "\`\`\`"; done
