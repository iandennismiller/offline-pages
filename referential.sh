#!/bin/bash

LC_CTYPE='C'
grep -ril 'http://' www | grep -v jpg |grep -v gif | grep -v png \
    | xargs sed -i '' 's/http:\/\//\//g'
