# Description: Boxstarter Script
# Author: Ayyyyy lmao

# Disable-UAC

# Get the base URI path from the ScriptToCall value
# $bstrappackage = "-bootstrapPackage"
# $helperUri = $Boxstarter['ScriptToCall']
# $strpos = $helperUri.IndexOf($bstrappackage)
# $helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
# $helperUri = $helperUri.TrimStart("'", " ")
# $helperUri = $helperUri.TrimEnd("'", " ")
# $helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
# $helperUri += "/scripts"
# write-host "helper script base URI is $helperUri"

# function executeScript {
#     Param ([string]$script)
#     write-host "executing $helperUri/$script ..."
# 	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
#     iex()
# }

$scriptRoot = "C:/klfm/init"



#--- Setting up Windows ---
. "$scriptRoot/scripts/SystemConfiguration.ps1";
. "$scriptRoot/scripts/FileExplorerSettings.ps1";
. "$scriptRoot/scripts/RemoveDefaultApps.ps1";
. "$scriptRoot/scripts/TimeZone.ps1";
# executeScript "Python.ps1";

#--- Big Windows Features ---
# executeScript "HyperV.ps1";
# executeScript "Docker.ps1";
# executeScript "WSL.ps1";
# executeScript "WSL-features.ps1";


#--- Apps/Tools ---
. "$scriptRoot/scripts/CommonDevTools.ps1";
# executeScript "Browsers.ps1";
# code --install-extension msjsdiag.debugger-for-chrome
# code --install-extension msjsdiag.debugger-for-edge


#--- Custom ---
. "$scriptRoot/scripts/klfm-client";
. "$scriptRoot/scripts/klfm-server";
# mkdir C:\klfm
# cd C:\klfm


# Enable-UAC
# Enable-MicrosoftUpdate
# Install-WindowsUpdate -acceptEula
