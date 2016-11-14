
# Rawan Alsaadi 10081442 
# Omar Toutounji 10169506
# Beltan Michel 10169162

#! /bin/bash
printf "Insert a password:\t"
IFS= read -rs PASSWD
c=0
if (( ${#PASSWD}>=8 )) ; then
	let "c += 1"
fi
if [[ $PASSWD =~ [0-9] ]] ; then
	let "c += 1"
fi
if [[ $PASSWD =~ [@#$%*+-=\&] ]] ; then
	let "c += 1"
fi

if [[ $c == 0 ]] ; then
	echo "Very weak"
elif [[ $c == 1 ]] ; then
	echo "Weak";  
elif [[ $c == 2 ]] ; then
	echo "Moderate";  
elif [[ $c == 3 ]] ; then
	echo "Strong";  
fi

