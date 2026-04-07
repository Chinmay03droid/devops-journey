#!/bin/bash

my_array=("web-server" "db-server" "cache-server")

function check_server() {
    echo "Checking: $1"
    echo "Status: OK"
    echo "Time: $(date)"
    echo ""
}

for server in "${my_array[@]}"; do
    check_server $server
done

