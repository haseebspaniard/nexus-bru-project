#!/bin/bash

echo "============================================"
echo "       NEXUS BREW - NGINX MONITOR"
echo "  $(date)"
echo "============================================"

# 1. Check Nginx service status
echo ""
echo "--- Nginx Service Status ---"
if systemctl is-active --quiet nginx; then
    echo "Nginx is RUNNING"
else
    echo "Nginx is STOPPED"
fi

# 2. Check port 76 listening
echo ""
echo "--- Port 76 Status ---"
if ss -tlnp | grep -q ':76'; then
    echo "Port 76 is LISTENING"
else
    echo "Port 76 is NOT listening"
fi

# 3. Check disk usage
echo ""
echo "--- Disk Usage ---"
df -h | grep -vE '^tmpfs|udev'

# 4. Display memory usage
echo ""
echo "--- Memory Usage ---"
free -h

echo ""
echo "============================================"
