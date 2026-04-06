#!/bin/bash

if [ -d "practice" ]; then
   rm -rf practice
   echo "Directory deleted!"
else
   echo "Directory does not exist!"
fi
