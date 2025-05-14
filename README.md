# Event Log Monitor Tool

This tool provides scripts to monitor event logs on Windows and Linux systems using PowerShell, Batch, and Bash.

## Features
- Monitor Windows Event Logs using PowerShell and Batch scripts.
- Monitor Linux system logs using a Bash script.
- Lightweight and easy to use.

## Download and Setup

### Clone the Repository
1. Open a terminal.
2. Clone the repository using the following command:
    ```bash
    git clone https://github.com/ltsali8220/Event-log-monitor.git
    ```
3. Navigate to the project directory:
    ```bash
    cd Event-log-monitor
    ```

### Fork the Repository
1. Go to the [GitHub repository](https://github.com/ltsali8220/Event-log-monitor.git).
2. Click the "Fork" button in the top-right corner of the page.
3. Clone your forked repository:
    ```bash
    git clone https://github.com/<your-username>/Event-log-monitor.git
    ```

## Usage

### PowerShell
1. Open a PowerShell terminal.
2. Run the script:
    ```powershell
    ./powershell/monitor-eventlog.ps1 -LogName "Application" -Source "*" -EventID "*"
    ```

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

## Known Issues
- The PowerShell script may require administrative privileges to access certain event logs.
- The Bash script assumes the default location of `/var/log/syslog`, which may vary depending on the Linux distribution.

## Support
If you encounter any issues or have questions, feel free to open an issue in the repository or contact the maintainers.

## Acknowledgments
Special thanks to the open-source community for providing tools and resources that made this project possible.