#!/bin/bash
# Write a script that looks for all executable files in the current directory and adds
# “#Developed in cisc220” just after the “#!/bin/bash” line.

sed -i '1 a #Developed in CISC 220' *.sh

