
#!/bin/bash 

UPTIME=$(uptime -p | sed -e "s/hour/H/" -e "s/minutes/M/" -e "s/up //")

echo -e " $UPTIME"
