### Script created by I_am_Filipo ###
### Github https://github.com/FilipooSVK?tab=repositories ###

#!/bin/bash

# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Update Raspberry Pi firmware
sudo rpi-update

# Install required packages
sudo apt install -y pps-tools gpsd gpsd-clients python-gps chrony

# Add configuration lines to /boot/config.txt
sudo bash -c "echo '# the next 3 lines are for GPS PPS signals' >> /boot/config.txt"
sudo bash -c "echo 'dtoverlay=pps-gpio,gpiopin=18' >> /boot/config.txt"
sudo bash -c "echo 'enable_uart=1' >> /boot/config.txt"
sudo bash -c "echo 'init_uart_baud=9600' >> /boot/config.txt"

# Add 'pps-gpio' to /etc/modules
echo 'pps-gpio' | sudo tee -a /etc/modules

# Reboot to apply changes (you can remove this line if you don't want to reboot)
sudo reboot
