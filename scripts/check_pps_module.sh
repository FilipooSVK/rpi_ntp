### Script created by I_am_Filipo ###
### Github https://github.com/FilipooSVK?tab=repositories ###

#!/bin/bash

# Run lsmod | grep pps
pps_module_result=$(lsmod | grep pps)

# Display the result of lsmod | grep pps
echo "Result of 'lsmod | grep pps':"
echo "$pps_module_result"

# Run sudo ppstest /dev/pps0 and limit the output to the first 5 lines
ppstest_result=$(sudo ppstest /dev/pps0 | head -n 7)

# Display the limited result of sudo ppstest /dev/pps0
echo -e "\nFirst 7 results of 'sudo ppstest /dev/pps0':"
echo "$ppstest_result"
