#!/bin/bash
function system_info() {
    echo "Date: $(date)"
    echo "User: $(whoami)"
    echo "Directory: $(pwd)"
}

for i in 1 2 3 ; do
    system_info
done

