#!/bin/bash

array=("Chinmay" "Asus" "Devops")
echo ${array[0]}
echo ${array[1]}
echo ${array[2]}

for name in "${array[@]}"; do
    echo "Hello $name."
done

