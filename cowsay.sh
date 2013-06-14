#Your .cow files directory. Change cowfiledir variable to your cowfiles dir. try locate *.cow or find / -name *.cow
cowfiledir="/opt/local/share/cowsay/cows"
# #array of cow files
files=( $(find $cowfiledir -maxdepth 1 -type f) )
randomfileindex=$((RANDOM%${#files[@]}+0))
# echo $randomfileindex
randomcowfile=${files[$randomfileindex]}
# remove -o from next line if you don't want offensive fortune :P
fortune -os | cowsay -f $randomcowfile

