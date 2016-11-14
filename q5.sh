#!/bin/bash
#Developed in CISC 220
#Developed in CISC 220
# Write a script that looks for all executable files in the current directory and adds
# “#Developed in cisc220” just after the “#!/bin/bash” line.
# Asked prof Shadi if I could just insert Developed in cisc220 after the first line, he said okay.

sed -i '1 a #Developed in CISC 220' *.sh

