#!/usr/bin/env bash

# This script just sleeps for a fixed number of seconds.

SLEEP_SECONDS=30

echo -n 'Sleeping: '
for ((i=1; i<=$SLEEP_SECONDS; i++)); do
  sleep 1s
  echo -n "$i "
done

