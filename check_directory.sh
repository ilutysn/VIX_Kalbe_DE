#!/bin/bash

# Variables
path="/hdfs/data/data1"
name_of_directory="data1"

# Check if directory exists
if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    # Create the directory
    mkdir "$path/$name_of_directory"
    if [ $? -eq 0 ]; then
        echo "$name_of_directory Directory created successfully!"
    else
        echo "Failed to create the $name_of_directory directory."
        exit 1
    fi
fi

