#!/bin/bash

filename=student.txt
declare -a list1
list1=( `cat "$filename"`)

filename1=course.txt
declare -a list2
list2=( `cat "$filename1"`)

filename2=student_course.txt
declare -a list
list=( `cat "$filename2"`)

for (( i = 2 ; i < ${#list[@]} ; i++))
do
	for (( j = 2 ; j < ((${#list1[@]}-1)) ; j+=2))
	do
		if [[ ${list[$i]} -eq ${list1[$j]} ]]; then
			list[$i]=${list1[(($j+1))]}
		fi
	done
	
	for (( k = 2 ; k < ((${#list2[@]}-1)) ; k+=2))
	do
		if [[ ${list[$i]} -eq ${list2[$k]} ]]; then
			list[$i]=${list2[(($k+1))]}
		fi
	done
	
done

echo _____________________________________________________

echo "Output"
echo "Student		Course"
echo _____________________________________________________

for (( i = 2 ; i < ${#list[@]} ; i++))
do
	if [[ $i%2 -eq 0 ]]; then
        printf "${list[$i]}		"
    else
		printf "${list[$i]}"
		echo""
	fi
done
