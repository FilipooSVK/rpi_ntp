### Script created by I_am_Filipo ###
### Github https://github.com/FilipooSVK?tab=repositories ###

#!/bin/bash

# Run raspi-config and make the desired changes
sudo raspi-config nonint do_serial 2 1
sudo raspi-config nonint do_serial 3 0

# Reboot to apply changes (you can remove this line if you don't want to reboot)
sudo reboot


