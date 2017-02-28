#!/bin/bash

for i in *.tor; do
  clt --seed-time=1 -u 15 $i;
  rm -f $i;
done
