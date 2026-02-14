#!/bin/bash

echo "=================================================================="
cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{print 100 -$8}')
echo "Total CPU Usage: $cpu_usage%"


echo "=================================================================="
memory_usage=$(free -m | awk '/^Mem:/ {print $2-$3}')
echo "Free Memory: $memory_usage"


echo "=================================================================="
free_disk=$(df -h / | awk 'NR==2 {print $5}')
echo "Free Disk: $free_disk"


echo "=================================================================="
top_cpu=$(ps aux --sort=%cpu | head -n 6)
echo "Top CPU processes"
echo "$top_cpu"


echo "=================================================================="
top_memory=$(ps aux --sort=%mem | head -n 6)
echo "Top Memory processes"
echo "$top_memory"