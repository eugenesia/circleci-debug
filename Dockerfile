FROM debian:jessie

RUN mkdir /dir1
COPY sleep.sh /dir1/
RUN cd /dir1 && \
  ./sleep.sh

