#!/bin/bash

while getopts ":f" option; do
	case $option in
	f)	echo -e "Uptime         | $(uptime -p)\nSystem Time    | $(date) \nUsed Storage   | $(df -h /| grep "/" | awk '{print $3}')B\nFree Storage   | $(df -h /| grep "/" | awk '{print $4}')B\nHostname       | $(hostname)\nIP-Adress      | $(hostname -i)\nOS Name        | $(cat /etc/os-release | grep -m 1 NAME | awk -F "\"" '{print $2}')\nOS Version     | $(cat /etc/os-release | grep -m 1 VERSION= | awk -F "\"" '{print $2}')\nCPU Model Name |$(grep -m 1 'model name' /proc/cpuinfo | awk -F ":" '{print $2}')\nCPU Cores      |$(grep -m 1 'cpu cores' /proc/cpuinfo | awk -F ":" '{print $2}')\nUsed Memory    | $(free -m | grep Mem | awk '{print $3}')MB\nFree Memory    | $(free -m | grep Mem | awk '{print $4}')MB\n" >> /home/heartbroken/m122/$(date '+%Y-%m')-sys-$(hostname).log;;
	?)	echo "Usage: bash script.sh [-f]"
		exit;;
	esac
done

echo -e "Uptime         | $(uptime -p)\nSystem Time    | $(date) \nUsed Storage   | $(df -h /| grep "/" | awk '{print $3}')B\nFree Storage   | $(df -h /| grep "/" | awk '{print $4}')B\nHostname       | $(hostname)\nIP-Adress      | $(hostname -i)\nOS Name        | $(cat /etc/os-release | grep -m 1 NAME | awk -F "\"" '{print $2}')\nOS Version     | $(cat /etc/os-release | grep -m 1 VERSION= | awk -F "\"" '{print $2}')\nCPU Model Name |$(grep -m 1 'model name' /proc/cpuinfo | awk -F ":" '{print $2}')\nCPU Cores      |$(grep -m 1 'cpu cores' /proc/cpuinfo | awk -F ":" '{print $2}')\nUsed Memory    | $(free -m | grep Mem | awk '{print $3}')MB\nFree Memory    | $(free -m | grep Mem | awk '{print $4}')MB"
