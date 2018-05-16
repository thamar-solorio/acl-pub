#!/bin/bash

conference=$1
acronyms_list=$2

# line = ${acronym} ${volume_id} ${volume_no}
while read line; do
  acronym=$(echo $line | awk -F' ' '{print $1}') # parse only the first item per line
  url="https://www.softconf.com/${conference}/$acronym/pub/aclpub/proceedings.tgz"
  echo $acronym $url
  [[ ! -d "data/$acronym" ]] && mkdir -p data/$acronym
  cd data/$acronym
  wget -N --no-check-certificate $url
  echo $lastfile
  echo $(pwd)
  tar -zxf proceedings.tgz;
  cd -
done <${acronyms_list}
