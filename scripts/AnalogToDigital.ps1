# choco install ffmpeg -y

#http://ffmpeg.org/ffmpeg-devices.html#dshow
ffmpeg -list_devices true -f dshow -i dummy

#Logitech HD Pro Webcam C910

ffmpeg -f dshow -i video="Logitech HD Pro Webcam C910"