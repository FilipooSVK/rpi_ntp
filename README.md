# Raspberry Pi Configuration Scripts

This repository contains a collection of shell scripts for configuring a Raspberry Pi, specifically for GPS and PPS (Pulse Per Second) signal integration, serial port configuration, and checking the PPS module.

## Setup GPS and Serial Port

The script `setup_gps_and_serial.sh` automates the process of setting up a Raspberry Pi for GPS and PPS integration. It performs the following tasks:

- Updates package lists and upgrades installed packages.
- Updates the Raspberry Pi firmware.
- Installs necessary packages for GPS and PPS.
- Configures `/boot/config.txt` for PPS signals.
- Adds 'pps-gpio' to `/etc/modules`.
- Configures the serial port using `raspi-config`.

To run the script, make it executable and execute it:

```bash
chmod +x setup_gps_and_serial.sh
./setup_gps_and_serial.sh
