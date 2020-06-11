FROM python:alpine

RUN apk add curl

RUN curl -kfsSL -o /exporter.py \
      https://raw.githubusercontent.com/lekpamartin/uptimerobot_exporter/master/files/exporter.py 

RUN pip install --no-cache-dir --upgrade requests pip

EXPOSE 9705

CMD [ "python", "/exporter.py" ]
