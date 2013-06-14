#Your .cow files directory. Change cowfiledir variable to your cowfiles dir. try locate *.cow or find / -name *.cow
cowfiledir="/opt/local/share/cowsay/cows"
# #array of cow files
files=( $(find $cowfiledir -maxdepth 1 -type f) )
randomfileindex=$((RANDOM%${#files[@]}+0))
# echo $randomfileindex
randomcowfile=${files[$randomfileindex]}
fortune -os | cowsay -f $randomcowfile

# echo ${#cowfiles[@]}
# echo $cowfiles;
# for cowfile in $cowfiles
# do
#   echo "$cowfile"
# done
# for f in *.pdf
# do
#   echo "Removing password for pdf file - $f"
# done
