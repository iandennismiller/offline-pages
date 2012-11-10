#!/bin/bash

UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) \
Chrome/23.0.1271.6 Safari/537.11"
FIRST=$(head -n1 $1)

mkdir -p www
cat > www/index.html <<EOF 
<html>
<head>
    <meta http-equiv="refresh" content="0;url=${FIRST}">
</head>
</html>
EOF
wget -v -H -N -U "$UA" -k -p --warc-file=mirror -i "$1" --random-wait --wait=3 -P=www
