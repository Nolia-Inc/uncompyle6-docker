FROM ubuntu:20.04

RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.9 -y
RUN apt install python3-pip -y

RUN apt install git -y
RUN git clone https://github.com/rocky/python-uncompyle6.git uncompyle6

WORKDIR uncompyle6

RUN python3 setup.py install

WORKDIR /files

CMD ["bash"]