    #$nic.SetDynamicDNSRegistration($true)

    
    $fuckWithDNS = $false;
    if($fuckWithDNS){


        # seems best so far
        (Get-WmiObject Win32_NetworkAdapterConfiguration  | Where-Object {$_.IPEnabled -eq "True"}).FullDNSRegistrationEnabled

        (Get-WmiObject Win32_NetworkAdapterConfiguration  | Where-Object {$_.IPEnabled -eq "True"} | Where-Object {$_.Description -like '*ZeroTier*'}).FullDNSRegistrationEnabled

        (Get-WmiObject Win32_NetworkAdapterConfiguration  | Where-Object {$_.IPEnabled -eq "True"} | Where-Object {$_.Description -like '*ZeroTier*'}).SetDynamicDNSRegistration($true)
        # (Get-WmiObject Win32_NetworkAdapterConfiguration  | Where-Object {$_.IPEnabled -eq "True"} | Where-Object {$_.Description -like '*ZeroTier*'}).SetDynamicDNSRegistration($true)
        
        # "Microsoft Hyper-V Network Adapter"

        # Set-DnsClient -InterfaceIndex "Name of VPN Connection" -RegisterThisConnectionsAddress $true -UseSuffixWhenRegistering $true
        
        $nics=Get-WmiObject "Win32_NetworkAdapterConfiguration where IPEnabled='TRUE'"
        foreach($nic in $nics)
        {
            $nic.FullDNSRegistrationEnabled
            if(($nic.Description) -like "*ZeroTier*" ){
                Write-Host "Got $($nic.Description)"

                #$nic.SetDynamicDNSRegistration($true)
            }
            else {
                Write-Host "Ignoring $($nic.Description)s"
            }
        }
    }