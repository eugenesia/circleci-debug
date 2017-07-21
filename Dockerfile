FROM debian:jessie

# Install some debugging tools.
# RUN apt-get update && \
#   apt-get install -y lsof

COPY sleep.sh /
RUN mkdir /dir1 && \
  mv /sleep.sh /dir1 && \
  # "Text file busy" error as sleep.sh is still being written.
  /dir1/sleep.sh

