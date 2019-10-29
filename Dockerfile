FROM python:latest
RUN apt-get update  && apt-get install vim -y
COPY app ./opt/app
COPY requirements.txt start.sh ./opt/app/
RUN pip install -r  ./opt/app/requirements.txt
WORKDIR ./opt/app/
RUN  ls && chmod +x start.sh
RUN ./start.sh

