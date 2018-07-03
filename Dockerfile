FROM python:3

WORKDIR /workdir

ADD requirements.txt /workdir

RUN pip install -r /workdir/requirements.txt

ADD models /workdir/models

ADD *.py\
    *.txt\
    /workdir/

CMD bash

