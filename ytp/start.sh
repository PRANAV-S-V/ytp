#!/bin/bash

echo "Executing start.sh"

# Rest of your script
chmod +x ./main.sh
source ./main.sh
cp ytp.sh ~/
chmod +x ~/ytp.sh
source ~/ytp.sh
echo "ytp.sh sourced successfully"


