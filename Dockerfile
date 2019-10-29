FROM python:2.7
RUN apt-get update
RUN virtualenv --no-site-packages env
WORKDIR opt/app
RUN apt-get install vim
COPY app ./opt/app
COPY ./requirements.txt /app/requirements.txt


RUN sudo pip install -r requiments.txt

