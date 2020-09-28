
write-host "Installing tools inside the WSL distro..."
Ubuntu1804 run apt install python2.7 python-pip -y 
Ubuntu1804 run apt install python-numpy python-scipy -y
Ubuntu1804 run pip install pandas

write-host "Finished installing tools inside the WSL distro"