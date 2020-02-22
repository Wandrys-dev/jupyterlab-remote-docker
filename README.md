
# Remote jupyterlab docker development

This is a small repo to solve some issues regarding how I like to work with experimenting with approaches at home. 

I have a workstation that I do th 


### Step 1: Building container on the remote machine


From inside the remote system. Build the container

`docker build . --rm -t tensorflow-dev:0.1`


### Step 2: ssh into remote machine with port forwarding

`ssh -N -L 8080:localhost:8080  ben@192.168.0.107`

### Step 3: Running container

`docker run --runtime=nvidia -v ${PWD}:/code -p 8080:8080 -it tensorflow-dev:0.1 bash`

### Step 4: Running notebook

`jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --no-browser --port 8080 --allow-root`
