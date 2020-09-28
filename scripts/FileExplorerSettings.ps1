

Function FileExplorer {
    Write-Host "Setting pleasant file explorer defaults..."

    # Show hidden files, Show protected OS files, Show file extensions
    Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFullPathInTitleBar -EnableShowFileExtensions -DisableOpenFileExplorerToQuickAccess
    # -EnableShowFullPathInTitleBar
    # -EnableShowProtectedOSFiles

    #Set-WindowsExplorerOptions
    # -EnableShowProtectedOSFiles -EnableOpenFileExplorerToQuickAccess -EnableShowRecentFilesInQuickAccess 
    #-EnableShowFrequentFoldersInQuickAccess -EnableExpandToOpenFolder -EnableShowRibbon

    Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableSearchEverywhereInAppsView -EnableListDesktopAppsFirst

    Disable-BingSearch
        
    # Set-BoxstarterTaskbarOptions -Size Small -Dock Top -Combine Never -AlwaysShowIconsOn -MultiMonitorOn -MultiMonitorMode All -MultiMonitorCombine Never
    Set-BoxstarterTaskbarOptions -Size Small -Combine Always -AlwaysShowIconsOn -MultiMonitorOn -MultiMonitorMode All -MultiMonitorCombine Never
}



#--- File Explorer Settings ---
# will expand explorer to the actual folder you're in
# Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
#adds things back in your left pane like recycle bin
# Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
#opens PC to This PC, not quick access
# Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
#taskbar where window is open for multi-monitor
# Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2


Function DisableWebSearch {
    Write-Host "Disabling Bing Search in Start Menu..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
}