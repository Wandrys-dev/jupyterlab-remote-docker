
# Romote docker development

### Step 1: ssh into remote machine with port forwarding

`ssh -N -L 8080:localhost:8080  ben@192.168.0.107`

### Building container

`docker build . --rm -t tensorflow-dev:0.1`

### Running container

`docker run --runtime=nvidia -v ${PWD}:/code -p 8080:8080 -it tensorflow-dev:0.1 bash`

### Running notebook

`jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --no-browser --port 8080 --allow-root`