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

To download the script :

```bash
wget https://github.com/FilipooSVK/rpi_ntp/raw/main/scripts/setup_gps.sh
```
To run the script, make it executable and execute it:

```bash
chmod +x setup_gps.sh
./setup_gps.sh
```

## Configure Serial Port

The script `configure_serial.sh` configures the Raspberry Pi's serial port by using raspi-config. It disables the login shell over serial and enables the serial port hardware.

To download the script :

```bash
wget https://github.com/FilipooSVK/rpi_ntp/raw/main/scripts/configure_serial.sh
```

To run the script, make it executable and execute it before running the GPS configuration script:

```bash
chmod +x configure_serial.sh
./configure_serial.sh
```

## Edit /etc/default/gpsd

The script `edit_gpsd_config.sh` edits the `/etc/default/gpsd` file to change the GPSD_OPTIONS and DEVICES values. It performs the following tasks:

Sets GPSD_OPTIONS to "-n".
Sets DEVICES to "/dev/ttyS0 /dev/pps0".
Restarts the gpsd service to apply the changes.

To download the script :

```bash
wget https://github.com/FilipooSVK/rpi_ntp/raw/main/scripts/edit_gpsd_config.sh
```
To run the script, make it executable and execute it:

```bash
chmod +x edit_gpsd_config.sh
./edit_gpsd_config.sh
```

## Check PPS Module

The script `check_pps_module.sh` checks the PPS module by running `lsmod | grep pps` and `sudo ppstest /dev/pps0`. It displays the results for both commands.

To download the script :

```bash
wget https://github.com/FilipooSVK/rpi_ntp/raw/main/scripts/check_pps_module.sh
```
To run the script, make it executable and execute it:

```bash
chmod +x check_pps_module.sh
./check_pps_module.sh
```
Note: The `check_pps_module.sh` script will display the results of the sudo ppstest /dev/pps0 command in full.

## Source

The detailed steps and instructions for these scripts can be found on the [Austin's Nerdy Things](https://austinsnerdythings.com/2021/04/19/microsecond-accurate-ntp-with-a-raspberry-pi-and-pps-gps/) website.

## License

These scripts are provided under the MIT License.










