Write-Output("Downloading Python...")
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.7/python-3.9.7.exe" -OutFile (Join-Path $env:TEMP "python-installer.exe")
Write-Output("Installing Python...")
Start-Process (Join-Path $env:TEMP "python-installer.exe") @("/quiet"; "InstallAllUsers=0"; "PrependPath=1"; "Include_test=0"; "InstallLauncherAllUsers=0") -Wait
