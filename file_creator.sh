#!/bin/bash

if [ ! -d "practice" ]; then
    mkdir practice
    echo "Directory created!"
else
    echo "Directory Already Exists."
fi

cd practice
touch file1.txt
touch file2.txt
touch file3.txt
echo "File created:"
ls

echo "Number of files:"
ls | wc -l
