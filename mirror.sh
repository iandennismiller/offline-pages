#!/bin/bash

UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) \
Chrome/23.0.1271.6 Safari/537.11"
WGET_ARGS="-v -H -N -U \"$UA\" -k -p"
FIRST=$(head -n1 $1)

mkdir -p www
pushd www

cat > index.html <<EOF 
<html>
<head>
    <meta http-equiv="refresh" content="0;url=${FIRST}">
</head>
</html>
EOF

for url in $(cat $1); do
    echo /usr/local/bin/wget $WGET_ARGS ${url}
    sleep 35;
done

popd
