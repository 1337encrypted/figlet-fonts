var=$(ls ../ | sed '/-/d' | sed 's/\..*$//g') && for i in ${var[@]}; do echo "\n\n$i"; figlet -ckf $i -w $(tput cols) The quick brown fox jumps over the lazy dog; done
