    #$nic.SetDynamicDNSRegistration($true)

    
    $fuckWithDNS = $true;
    if($fuckWithDNS){


        (Get-WmiObject Win32_NetworkAdapterConfiguration  | Where-Object {$_.IPEnabled -eq "True"} | Where-Object {$_.Description -like '*ZeroTier*'}).FullDNSRegistrationEnabled
# SetDynamicDNSRegistration($true)


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
                #$nic.SetDynamicDNSRegistration($true)

            }
        }
    }