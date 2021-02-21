FROM ubuntu:20.04

ENTRYPOINT []

ADD . /app/

RUN apt-get update
RUN apt-get install -y python3 python3-pip

RUN python3 -m pip install --no-cache --upgrade pip
RUN pip3 install --no-cache rasa

RUN cd /app/ && rasa train

CMD cd /app/ && rasa run --enable-api --cors "*" --debug -p $PORT
