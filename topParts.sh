# Rawan Alsaadi 10081442 
# Omar Toutounji 10169506
# Beltan Michel 10169162

#!/bin/bash
lsblk --noheadings --raw | grep 'part' | sed s/"K"/" K"/ | sed s/"M"/" M"/ | sed s/"G"/" G"/ | sort -h -k5,5 -k4,4n | tail -2
