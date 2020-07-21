choco install zerotier-one
refreshenv

#report address of self?

# zerotier-cli join 83048a0632200a32 #mgmt
zerotier-cli join 3efa5cb78a9c1546 #klfm

# On this domain controller, you should:

# Set the ZT Adapter to use DHCP for the IPv4 Address and DNS settings, and the OK back out.
# Set the ZT Adapter to not register in DNS
# Check DNS and remove the ZT Adapter IP address.
# On the Client Machines, you should:

# Set the ZT Adapter to use DHCP for the IPv4 Address and DNS settings, and the OK back out.
# Set the ZT Adapter to not register in DNS
# Check DNS and remove the ZT Adapter IP address.
# 4) Modify the C:\Windows\system32\drivers\etc\hosts file to add an entry for the DC and its ZT IP address.
