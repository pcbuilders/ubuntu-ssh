#!/bin/bash

rm -f *.aria2*

for i in *; do
  nf="${i,,}";
  mv $i/*.mp4 /var/www/html/fls;
  mv $i /var/www/html/$nf;
done
