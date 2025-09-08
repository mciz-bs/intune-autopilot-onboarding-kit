[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo -Force

# Vytvor priečinok, ak neexistuje
New-Item -Path "C:\Autopilot" -ItemType Directory -Force
Set-Location "C:\Autopilot"

# Spusti skript s výstupom do CSV a Group Tag
Get-WindowsAutopilotInfo -OutputFile "AutopilotHWID.csv" -GroupTag "student-hp"
