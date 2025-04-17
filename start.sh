#!/bin/bash

# Script to fetch basic system information on a Linux environment

echo "System Information Script"
echo "=========================="

# Get the hostname
echo "Hostname: $(hostname)"

# Get the operating system and version
echo "OS and Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '\"')"

# Get the kernel version
echo "Kernel Version: $(uname -r)"

# Get the system uptime
echo "System Uptime: $(uptime -p)"

# Get the total memory
echo "Total Memory: $(free -h | grep Mem | awk '{print $2}')"

# Get the available disk space
echo "Available Disk Space: $(df -h / | grep / | awk '{print $4}')"

# Get the number of CPUs
echo "Number of CPUs: $(nproc)"

# Get the current logged-in users
echo "Logged-in Users: $(who | wc -l)"

echo "=========================="
echo "Script execution completed."