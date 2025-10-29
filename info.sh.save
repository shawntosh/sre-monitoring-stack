#!/usr/bin/env bash

echo "===== SYSTEM HEALTH REPORT ====="
echo "User: $(whoami)"
echo "Uptime: $(uptime)"
echo "IP Address: $(hostname -I)"
echo "Disk Usage:"
df -h | grep '^/dev'
echo "Memory Usage:"
free -h
echo "CPU Load:"
top -bn1 | grep "Cpu(s)"
echo "===== END OF REPORT ====="
#!/usr/bin/env bash
echo "===== System Info ====="
echo "User: $(whoami)"
echo "Uptime: $(uptime)"
echo "IP Address: $(hostname -I)"
