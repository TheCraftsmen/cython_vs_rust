#FROM ubuntu:22.04
FROM python:3.10

RUN apt-get update -y
RUN apt-get install -y libomp-dev
#RUN apt install -y python3-pip

RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ADD . /app/
RUN python3 setup.py build_ext --inplace


