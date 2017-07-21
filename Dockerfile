FROM debian:jessie

COPY sleep.sh /
RUN mkdir /dir1 && \
  mv /sleep.sh /dir1 && \
  cd /dir1 && \
  ./sleep.sh

