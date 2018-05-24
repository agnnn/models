# Python base image
FROM python:3.6.3

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY app.py ./
RUN pip install --no-cache-dir -r requirements.txt

# ENTRYPOINT /bin/bash
EXPOSE 80

# Launch server app
ENTRYPOINT python ./app.py
