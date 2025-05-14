# Script to monitor Windows Event Logs
param (
    [string]$LogName = "Application",
    [string]$Source = "*",
    [string]$EventID = "*"
)

Write-Host "Monitoring Event Log: $LogName for Source: $Source and EventID: $EventID"

# Register an event log watcher
$Query = "<QueryList><Query Id='0'><Select Path='$LogName'>*[System[(EventID=$EventID)]]</Select></Query></QueryList>"
$EventWatcher = New-Object System.Diagnostics.Eventing.Reader.EventLogWatcher($Query)

$EventWatcher.EventRecordWritten += {
    param($sender, $e)
    Write-Host "Event Detected: $($e.EventRecord.ToXml())"
}

$EventWatcher.Enabled = $true
Write-Host "Press Ctrl+C to stop monitoring."
while ($true) { Start-Sleep -Seconds 1 }