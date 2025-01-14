#!/usr/bin/env bash

if [ "$(date +'%Z')" = "-03" ]; then 
  redshift &
else 
  redshift -P -O 4000 &
fi
