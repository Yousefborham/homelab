#!/bin/bash
# Show the top 10 sources of failed SSH login attempts

echo "=== Top 10 failed SSH login sources ==="
journalctl -u ssh | grep "Failed password" | awk '{print $11}' | sort | uniq -c | sort -rn | head -10
