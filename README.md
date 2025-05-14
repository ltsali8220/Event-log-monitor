# Event Log Monitor Tool

This tool provides scripts to monitor event logs on Windows and Linux systems using PowerShell, Batch, and Bash.

## Features
- Monitor Windows Event Logs using PowerShell and Batch scripts.
- Monitor Linux system logs using a Bash script.
- Lightweight and easy to use.

## Usage

### PowerShell
1. Open a PowerShell terminal.
2. Run the script:
   ```powershell
   ./powershell/monitor-eventlog.ps1 -LogName "Application" -Source "*" -EventID "*"


   #!/bin/bash
# filepath: EventLogMonitor/bash/monitor-eventlog.sh
# Script to monitor Linux system logs
LOG_FILE="/var/log/syslog"
KEYWORD="error"

echo "Monitoring $LOG_FILE for keyword: $KEYWORD"
echo "Press Ctrl+C to stop monitoring."

tail -F "$LOG_FILE" | grep --line-buffered "$KEYWORD"

### Bash
1. Open a terminal on your Linux system.
2. Make the script executable:
    ```bash
    chmod +x bash/monitor-eventlog.sh
    ```
3. Run the script:
    ```bash
    ./bash/monitor-eventlog.sh
    ```

## Prerequisites
- For PowerShell scripts, ensure you have PowerShell installed on your system.
- For Bash scripts, ensure you have Bash and necessary permissions to access system logs.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## Disclaimer
Use this tool at your own risk. Ensure you have proper permissions to access and monitor system logs.