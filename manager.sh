#!/bin/bash

echo "Enter directory name:"
read DIR

echo "Create or Clean (c/d):"
read CHOICE
if [ "$CHOICE" == "c" ]; then
    if [ -d "$DIR" ]; then
    echo "Directory already exists!"
    else
       mkdir $DIR
       echo "Directory created!"
    fi
elif [ "$CHOICE" == "d" ]; then
    if [ -d "$DIR" ]; then
        rm -rf $DIR
        echo "Directory deleted!"
    else
        echo "Directory does not exist!"
    fi

else
   echo "Invalid option!"
fi


