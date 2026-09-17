#!/bin/bash

echo "=== System Check ==="
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
