### Script created by I_am_Filipo ###
### Github https://github.com/FilipooSVK?tab=repositories ###

#!/bin/bash

# Define the new values
GPSD_OPTIONS="-n"
DEVICES="/dev/ttyS0 /dev/pps0"

# Update the /etc/default/gpsd file
sudo sed -i "s|^GPSD_OPTIONS=.*$|GPSD_OPTIONS=\"$GPSD_OPTIONS\"|" /etc/default/gpsd
sudo sed -i "s|^DEVICES=.*$|DEVICES=\"$DEVICES\"|" /etc/default/gpsd

# Restart the gpsd service to apply the changes
sudo systemctl restart gpsd

# Display the updated configuration for confirmation
echo "Updated /etc/default/gpsd:"
cat /etc/default/gpsd

sudo reboot
