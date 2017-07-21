FROM debian:jessie

COPY sleep.sh /
RUN ./sleep.sh

