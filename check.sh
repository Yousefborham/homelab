#!/bin/bash

echo "=== System Status ==="
date
echo ""

echo "--- Uptime & Load ---"
uptime
echo ""

echo "--- Disk ---"
df -h /
echo ""

echo "--- Memory ---"
free -h

echo "--- Top Processes ---"
ps aux --sort=-%mem | head -6
