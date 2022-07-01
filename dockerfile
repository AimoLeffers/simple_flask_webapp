# syntax=docker/dockerfile:1

# docker build --tag simple_flask_webapp .
# docker run --name simple_flask_webapp_container simple_flask_webapp

FROM python:3.10-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3", "server.py" ]
EXPOSE 5000
