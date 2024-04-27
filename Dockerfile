FROM ubuntu:latest

COPY requirements.txt /netprobe_lite/requirements.txt

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y iputils-ping
RUN pip install -r /netprobe_lite/requirements.txt --break-system-packages

WORKDIR /netprobe_lite

ENTRYPOINT [ "/bin/bash", "./entrypoint.sh" ]