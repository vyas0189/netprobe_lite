FROM python:latest

COPY requirements.txt /netprobe_lite/requirements.txt

# Install python/pip
ENV PYTHONUNBUFFERED=1

RUN pip install -r /netprobe_lite/requirements.txt --break-system-packages

WORKDIR /netprobe_lite

ENTRYPOINT [ "/bin/bash", "./entrypoint.sh" ]