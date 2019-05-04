FROM python:3-alpine

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN apk add --no-cache --virtual build-deps git gcc libc-dev python-dev zlib-dev
RUN apk add --no-cache rsync libxslt-dev libxml2

RUN git clone https://github.com/woefe/studip-sync.git /app
WORKDIR /app

RUN python setup.py install --optimize=1

RUN rm -rf /app/* && apk del build-deps

RUN mkdir /root/.config && mkdir /root/.config/studip-sync && touch /root/.config/studip-sync/config.json

CMD ["studip-sync"]