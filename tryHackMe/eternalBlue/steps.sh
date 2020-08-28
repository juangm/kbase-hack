#!/bin/bash

# URL to to attack
MACHINE_IP=10.10.141.33

case "$1" in
  # How many ports under 1000
  1)
    nmap $MACHINE_IP
    ;;
  2)
    echo "Check solutions.md"
  *)
    echo "Select proper step"
    ;;
esac
