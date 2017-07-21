#!/usr/bin/env bash

SLEEP_SECONDS=30

echo -n 'Sleeping: '
for ((i=1; i<=$SLEEP_SECONDS; i++)); do
  sleep 1s
  echo -n "$i "
done

