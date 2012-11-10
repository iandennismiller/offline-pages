#!/bin/bash

bash -c "sleep 3; open http://localhost:8000" &
pushd www
python ../SimpleHTTPServer.py
