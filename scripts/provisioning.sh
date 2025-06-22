#!/bin/bash

echo "Updating the system..."
sudo apt-get update 
sudo apt-get upgrade -y

echo "Installing packages..."
sudo apt-get install -y \
    adcli \
    locate \
    ntp \
    oddjob \
    oddjob-mkhomedir \
    qemu-guest-agent \
    realmd \
    samba-common-bin \
    sssd \
    sssd-tools

echo "Cleaning apt cache..."
sudo apt-get autoclean -y

echo "Enable qemu-guest-agent..."
sudo systemctl enable qemu-guest-agent
sudo systemctl start qemu-guest-agent