FROM python:3.7-slim

LABEL version="v1"
LABEL description="Progress tracker WebApp for the Python 10 minutes a day course"
LABEL maintainer="dennis@bakhuis.nu"

RUN useradd -ms /bin/bash tracker
WORKDIR /home/tracker

COPY ./static/ ./static/
COPY ./templates/ ./templates/
COPY ./requirements.txt .
COPY ./main.py .
COPY ./articles.data .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN chown -R tracker:tracker ./

USER tracker

EXPOSE 2020

CMD ["gunicorn","-b", ":2020", "main:app"]
