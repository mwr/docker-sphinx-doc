USAGE: 

# Build image
docker build .

# create mount with a data-volume (if not within /Users)
boot2docker stop
vboxmanage sharedfolder add "boot2docker-vm" —name Data-Share —hostpath  <path-on-host> —automount
boot2docker up
boot2docker ssh
sudo mkdir /Data
sudo mount -t vboxsf Data-Share /Data

# Custom Boot2docker startup script
#!/bin/zsh
boot2docker start
boot2docker ssh "sudo mount -t vboxsf Data-Share /Data"
boot2docker ssh "sudo mount -t vboxsf Data-Share /Volumes/Data"

# run with mount data-volume 
docker run -itd --name sphinx-1.2b1 --volumes-from data-volume mwltr/sphinx:1.2b1 # with data volume

# run a command at the "mirrored" working-dir (pwd)
sphinx "__COMMAND__"