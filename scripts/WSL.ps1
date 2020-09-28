
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux  /all /norestart
# //reboot?

# WSL2
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# "reboot"

# https://aka.ms/wsl2kernel ?


wsl --set-default-version 2

wsl --list --verbose
wsl --list

Invoke-WebRequest -Uri https://aka.ms/wslubuntu2004 -OutFile C:/klfm/wsl2/Ubuntu2004.appx -UseBasicParsing
Add-AppxPackage -Path C:\klfm\wsl2\Ubuntu2004.appx
Ubuntu2004 install --root
Ubuntu2004 run apt update
Ubuntu2004 run apt upgrade -y

# wsl --set-default Ubuntu2004

# choco install -y Microsoft-Windows-Subsystem-Linux --source="'windowsfeatures'"

docker tag demo-repo/some-image:v12 dokku/test-app:v12
