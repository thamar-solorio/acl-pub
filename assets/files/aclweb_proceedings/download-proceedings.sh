#!/bin/bash

conference=$1
workshops=$2

for name in $(cat ${workshops}); do
  x=$(echo $name | cut -d\| -f1)
  url=$(echo $name | cut -d\| -f2)
  if test $x = $url; then
    url="https://www.softconf.com/${conference}/$x/pub/aclpub/proceedings.tgz"
  fi
  echo $x $url
  [[ ! -d "data/$x" ]] && mkdir -p data/$x
  cd data/$x
  wget -N --no-check-certificate $url
  lastfile=$(ls -r1 *.tgz | tail -n1)
  tar --exclude '*.pdf' --exclude '*gz' --exclude '*zip' -xzvf $lastfile proceedings/order proceedings/final 
  cd -
done