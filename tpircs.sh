#!/bin/bash

# Rawan Alsaadi 10081441
# Omar Toutounji 10169506
# Beltan Michel 10169162

read -p "Insert a list of words: " -a wordArray
lenArray=${#wordArray[*]}
printf "Output: "
for ((n=0; n<lenArray; n++)); do
    bckwrds=
    word=${wordArray[n]}
    for ((i=${#word}-1; i>=0; i--)); do
        bckwrds="$bckwrds${word:$i:1}";
    done
    printf $bckwrds" "
done
echo 
