FROM debian:jessie

# Setup the container.
# RUN apt-get update && \
#   apt-get install -y lsof

COPY sleep.sh /
RUN mkdir /dir1 && \
  mv /sleep.sh /dir1 && \
  cd /dir1 && \
  # sleep 5s && \
  /dir1/sleep.sh

