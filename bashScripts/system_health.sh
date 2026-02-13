#!/usr/bin/bash

get_cpu_usage() {
    # Using top command to get CPU idle percentage and calculation usage
    cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | cut -d'.' -f1)
    cpu_usage=$((100 - cpu_idle))
    echo "$cpu_usage"
}

# Function to get memory usage in percentage
get_mem_usage(){
    mem_used=$(free -m | awk '/Mem:/ {print $3}')
    mem_total=$(free -m | awk '/Mem:/ {print $2}')
    mem_usage=$((mem_used * 100 / mem_total))
    echo "$mem_usage"
}

# Function to get disk space of root partition in percentage
get_disk_usage(){
    disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
    echo "$disk_usage"
}

# Function to get system uptime in a human-readable format
get_uptime(){
    uptime_seconds=$(cat /proc/uptime | awk '{print int($1)}')
    days=$((uptime_seconds / 86400))
    hours=$(( (uptime_seconds % 86400) / 3600 ))
    minutes=$(( (uptime_seconds % 3600) / 60 ))
    echo "${days} days, ${hours} hours, and ${minutes} minutes"
}

# Gather system info
cpu=$(get_cpu_usage)
mem=$(get_mem_usage)
disk=$(get_disk_usage)
uptime=$(get_uptime)

# Provide feedback based on usage thresholds
echo "System Health Report."
echo "---------------------"

# CPU feedback
if [ "$cpu" -lt 30 ]; then
    echo "CPU Usage: $cpu% - Your processor is running smoothly and not busy."
elif [ "$cpu" -lt 70 ]; then
    echo "CPU Usage: $cpu% - Your processor is moderately busy."
else
    echo "CPU Usage: $cpu% - Your processor is working hard. You might want to close some programs."
fi

echo ""

# Memory feedback
if [ "$mem" -lt 40 ]; then 
    echo "Memory Usage: $mem% - Plenty of memory available."
elif [ "$mem" -lt 80 ]; then 
    echo "Memory Usage: $mem% - Memory usage is moderate."
else 
    echo "Memory Usage: $mem% - Memory is running low. consider closing some applications."
fi

echo ""

# Disk feedback
if [ "$disk" -lt 70 ]; then
    echo "Disk Usage: $disk% - You have plenty of disk space ."
elif [ "$disk" -lt 90  ]; then
    echo "Disk Usage: $disk% - Disk space is getting tight."
else 
    echo "Disk Usage: $disk% - Disk space is critally low! Please free up some space."
fi

echo ""

# Uptime feedback
echo "System Uptime: $uptime"

echo ""

echo "----------------------"
echo "End of report"