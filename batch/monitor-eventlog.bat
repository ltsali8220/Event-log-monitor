:: filepath: EventLogMonitor/batch/monitor-eventlog.bat
:: Script to monitor Windows Event Logs
@echo off
set LogName=Application
set Source=*
set EventID=*

echo Monitoring Event Log: %LogName% for Source: %Source% and EventID: %EventID%
echo Press Ctrl+C to stop monitoring.

:loop
wevtutil qe %LogName% /q:"*[System[(EventID=%EventID%)]]" /f:text
timeout /t 5 >nul
goto loop