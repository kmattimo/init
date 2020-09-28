
#also consider GPO


#allow syncthing 22000
New-NetFirewallRule -DisplayName "_KLFM Allow SyncThing 22000" -Direction Inbound -LocalPort 22000 -Protocol TCP -Profile "Domain,Private" -Action Allow

#9993 zerotier
# 22222 (syncthing web gui)
# 22223 (ssh)
# 65535

New-NetFirewallRule -DisplayName "_KLFM Allow ICMPv4" -Direction Inbound -Protocol ICMPv4 -IcmpType 8 -Profile "Domain,Private" -Action Allow
New-NetFirewallRule -DisplayName "_KLFM Allow ICMPv6" -Direction Inbound -Protocol ICMPv6 -IcmpType 8 -Profile "Domain,Private" -Action Allow

New-NetFirewallRule -DisplayName "_KLFM Allow ZT 9993" -Direction Inbound -LocalPort 9993 -Protocol UDP -Profile "Domain,Private" -Action Allow
