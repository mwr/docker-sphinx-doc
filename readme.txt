USAGE: 

# Build image
docker build .

# run with mount data-volume 
docker run -itd --name sphinx-1.2b1 --volumes-from data-volume mwltr/sphinx:1.2b1 # with data volume

# run a command at the "mirrored" working-dir (pwd)
sphinx "__COMMAND__"