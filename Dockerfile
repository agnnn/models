# Python base image
FROM python:2-slim

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY app.py ./
RUN pip install --no-cache-dir -r requirements.txt

# ENTRYPOINT /bin/bash
EXPOSE 80

# Launch server app
CMD [ "python", "./app.py" ]
