FROM openjdk:8

COPY . /spigot
WORKDIR /spigot

RUN apt-get -y update
RUN apt-get -y install git

RUN chmod +x getLatest.sh

ENTRYPOINT ["./getLatest.sh"]
