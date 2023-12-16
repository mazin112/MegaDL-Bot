FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

RUN cd /
RUN git clone https://github.com/AsmSafone/MegaDL-Bot
RUN cd MegaDL-Bot
WORKDIR /MegaDL-Bot




CMD python3 main.py
