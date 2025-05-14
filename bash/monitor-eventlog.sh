#!/bin/bash
# filepath: EventLogMonitor/bash/monitor-eventlog.sh
# Script to monitor Linux system logs
LOG_FILE="/var/log/syslog"
KEYWORD="error"

echo "Monitoring $LOG_FILE for keyword: $KEYWORD"
echo "Press Ctrl+C to stop monitoring."

tail -F "$LOG_FILE" | grep --line-buffered "$KEYWORD"