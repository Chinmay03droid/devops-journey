#!/bin/bash

LOGFILE=~/devops_journey/system_log.txt
echo "==========================="
echo "Check ran at: $(date)" >> $LOGFILE
echo "Disk: $(df / | awk 'NR==2{print $5}')" >> $LOGFILE
echo "Memory: $(free | awk 'NR==2 {print $3*100/$2 "%"}')" >> $LOGFILE
echo "===========================" >> $LOGFILE
echo "==========================="
echo "SYSTEM HEALTH CHECK"
echo "DATE: $(date)"
echo "==========================="

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "CPU Load:"
uptime

echo ""
echo "Disk Alert Check:"
DISK_USAGE=$(df / |  awk 'NR==2 {print $5}' | tr -d '%')
if [ "$DISK_USAGE" -gt 80 ]; then
     echo "WARNING: Disk usage is at ${DISK_USAGE}%!"
else
     echo "SAFE:Disk Usage is at ${DISK_USAGE}% - All good! "
fi

echo ""
echo "Memory Alert Check:"
MEM_TOTAL=$(free | awk 'NR==2 {print$2}')
MEM_USED=$(free | awk 'NR==2 {print$3}')
MEM_PERCENT=$(( MEM_USED * 100 / MEM_TOTAL))

if [ "$MEM_PERCENT" -gt 80 ]; then
    echo "WARNING: Memory usage is at ${MEM_PERECNT}%!"
else
    echo "OK: Memory usage is at ${MEM_PERCENT}% - All good!"
fi

find ~/devops_journey/ -name "*.txt" -mtime +30 -delete
echo "Old logs cleaned up!"

echo ""
echo "Check Complete"

