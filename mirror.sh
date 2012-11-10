#!/bin/bash

UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) \
Chrome/23.0.1271.6 Safari/537.11"
FIRST=$(head -n1 $1 | sed 's/http:\/\//\//')

mkdir -p www
cat > www/index.html <<EOF 
<html>
<head>
    <meta http-equiv="refresh" content="0;url=${FIRST}">
</head>
</html>
EOF
wget -v --span-hosts --timestamping --convert-links --page-requisites \
    --random-wait --wait=3 --directory-prefix="www" --user-agent="$UA" --input-file="$1"

LC_CTYPE='C'
grep -ril 'http://' www | grep -v jpg |grep -v gif | grep -v png \
    | xargs sed -i '' 's/http:\/\//\//g'

cp $(find www -name favicon.ico | head -n1) www
