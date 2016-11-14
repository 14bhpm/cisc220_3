#!/bin/bash
#Developed in CISC 220
# Rawan Alsaadi 10081442 
# Omar Toutounji 10169506
# Beltan Michel 10169162

echo "print all lucky numbers between 1000 and 10000 "
for i in {1000..10000}; do     
	digit=0 # To store a single digit 
 
	sum=0  # To store the sum of digits
 
	num=$i  # while the number greater than zero
	while [ $num -gt 0 ]
	do
    		digit=$(( $num % 10 )) # get one digit by take the reminder of 10
    		num=$(( $num / 10 ))  # To get the remaining digits
    		sum=$(( $sum + $digit )) # calculate sum of digit
	done
	if [[ $sum == 7 ]] ; then
		printf "$i\n";	
	fi
done
