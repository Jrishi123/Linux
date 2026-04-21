#!/bin/bash

echo "==============================="
echo "   SYSTEM HEALTH MONITOR 🚀"
echo "==============================="

# 🧠 CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

# 💾 Memory Usage
echo "Memory Usage:"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'

# 💽 Disk Usage
echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Used: %s / Total: %s (%s)\n", $3,$2,$5}'

# 🔍 Check Process (example: nginx)
PROCESS="nginx"

if pgrep $PROCESS > /dev/null
then
  echo "$PROCESS is running ✅"
else
  echo "$PROCESS is NOT running ❌"
fi

# 📜 Check Logs (example)
echo "Recent Errors in Logs:"
tail -n 10 /var/log/syslog 2>/dev/null | grep -i "error"

echo "==============================="
echo "Check Completed ✅"