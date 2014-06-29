#!/bin/bash
echo Please enter the Machine name eg: dev-regservice
read machinename
sudo sed -i '/^127.0.0.1/ s/$/ '${machinename}'/'  /etc/hosts
sudo sed -i 's/.*/'${machinename}'/g' /etc/hostname
sudo hostname -F /etc/hostname
