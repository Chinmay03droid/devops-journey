#!/bin/bash

FILE=$1

if [ -z "$FILE" ]; then
   echo "Please enter file name!"
   exit 1
fi

if [ ! -f "$FILE" ]; then
   echo "File does not exist!"
   exit 1
fi

echo "File: $FILE"
echo "Size:  $(du -h $FILE | cut -f1)"
echo "Lines: $(wc -w < $FILE)"
echo "Words: $(wc -w < $FILE)"

