# Python base image
FROM python:3.6.3

RUN mkdir /models
COPY . /models
WORKDIR /models/

# ENTRYPOINT /bin/bash
EXPOSE 80

# Launch server app
ENTRYPOINT python ./app.py  
