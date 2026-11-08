#!/bin/bash
cd "$(dirname "$0")"

# Build first, so the servers start right away below.
# The first build may take a minute.
echo "Building..."
go build -o checklist_server checklist_server.go || exit 1
go build -o checklist_client checklist_client.go || exit 1

echo "Running servers..."
./checklist_server -p=9000 &
SERVER1=$!
./checklist_server -p=9001 &
SERVER2=$!

# Kill the servers when this script exits.
trap 'echo "Killing server processes"; kill $SERVER1 $SERVER2 2>/dev/null' EXIT

echo "Waiting for servers..."
for port in 9000 9001; do
  for i in $(seq 1 100); do
    (echo > /dev/tcp/127.0.0.1/$port) 2>/dev/null && break
    if [ $i -eq 100 ]; then
      echo "Server on port $port did not start!"
      exit 1
    fi
    sleep 0.2
  done
done

echo "Running client..."
./checklist_client -tls=0 -serverAddr=127.0.0.1:9000 -serverAddr=127.0.0.1:9001
echo "Client done!"
