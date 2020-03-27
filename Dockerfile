FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN pip3 install gunicorn
RUN pip install pyjwt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]