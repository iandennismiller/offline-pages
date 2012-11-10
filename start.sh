#!/bin/bash

PORT=$[ ( $RANDOM % 100 ) + 8000]
bash -c "sleep 3; open http://localhost:${PORT}" &
pushd www
python ../ArchiveHTTPServer.py $PORT
popd
