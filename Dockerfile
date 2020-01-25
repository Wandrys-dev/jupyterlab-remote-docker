FROM tensorflow/tensorflow:2.1.0-gpu-py3-jupyter

RUN apt-get install git -y
RUN pip install -U pip
RUN pip install jupyterlab

WORKDIR /code
