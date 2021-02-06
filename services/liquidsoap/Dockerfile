FROM ubuntu:latest


RUN apt-get -q update && \
    apt-get -q -y install liquidsoap 

COPY ./config.liq ./config.liq

RUN chmod +x /media/
CMD ["liquidsoap", "config.liq"]
