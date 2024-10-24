#!/bin/bash
if [ $# -eq 0 ]; then
    echo 'USAGE: tunnel-my-server.sh ${PORT-NUMBER}'
fi

PORT=$1
ssh -R 80:localhost:${PORT} ssh.localhost.run
