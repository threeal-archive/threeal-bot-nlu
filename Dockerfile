FROM rasa/rasa:latest

ADD . /app

RUN cd /app && if ! test -d 'models'; then rasa train; fi

ENTRYPOINT cd /app && rasa run --enable-api --cors "*" --debug -p $PORT
