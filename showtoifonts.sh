var=$(ls ~/figletfonts/ | sed '/-/d' | sed 's/\..*$//g') && for i in ${var[@]}; do echo -e "\n\n$i"; figlet -f $i The quick brown fox jumps over the lazy dog; done
