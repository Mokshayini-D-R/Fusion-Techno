#!/bin/bash
# hydra_wrapper.sh – Automates brute-force testing with Hydra

TARGET=$1
SERVICE=$2
USERLIST="users.txt"
PASSLIST="passwords.txt"

echo "[*] Starting brute-force test on $SERVICE://$TARGET"
hydra -L $USERLIST -P $PASSLIST $TARGET $SERVICE -t 4 -V -o hydra_results.txt
echo "[+] Results saved to hydra_results.txt"
