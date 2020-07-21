22000

#allow syncthing 22000
New-NetFirewallRule -DisplayName "_KLFM Allow SyncThing 22000" -Direction Inbound -LocalPort 22000 -Protocol TCP -Profile "Domain,Private" -Action Allow

