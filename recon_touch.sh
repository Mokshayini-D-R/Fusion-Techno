#!/bin/bash
# recon_touch.sh – Basic enumeration for Ubuntu Touch container

echo "[*] Hostname and OS Info:"
hostnamectl

echo "[*] Installed Packages:"
dpkg -l | grep -E 'openssh|telnet|ftp|netcat'

echo "[*] Network Interfaces:"
ip a

echo "[*] Active Services:"
systemctl list-units --type=service --state=running
