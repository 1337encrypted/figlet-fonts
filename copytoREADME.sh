var=$(ls . | sed '/-/d' | sed 's/\..*$//g') &&
	for i in ${var[@]}; do
		echo -e "\n\n### $i";
		echo "\`\`\`";
		figlet -ctf $i Encrypted;
		echo "\`\`\`"; done
