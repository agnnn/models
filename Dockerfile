# Python base image
FROM python:3.6.3

RUN mkdir /models
COPY . /models
WORKDIR /models/
RUN pip install -r ./requirements.txt

# ENTRYPOINT /bin/bash
EXPOSE 80

# Launch server app
ENTRYPOINT python ./app.py
