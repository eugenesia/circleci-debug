FROM debian:jessie

# Setup the container.
RUN apt-get update && \
  apt-get install -y lsof

COPY sleep.sh /
RUN mkdir /dir1 && \
  # lsof shows that sleep.sh is being used.
  # lsof && ps aux && ls -al && \
  mv /sleep.sh /dir1 && \
  lsof && \
  # "Text file busy" error as sleep.sh is still being written.
  /dir1/sleep.sh

