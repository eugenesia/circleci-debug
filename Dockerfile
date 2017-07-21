FROM debian:jessie

# Setup the container.
RUN apt-get update && \
  apt-get install -y lsof

COPY sleep.sh /
RUN mkdir /dir1 && \
  lsof && ps aux && ls -al && \
  mv /sleep.sh /dir1 && \
  # DEBUG
  cd /dir1 && \
  # sleep 5s && \
  ./sleep.sh

