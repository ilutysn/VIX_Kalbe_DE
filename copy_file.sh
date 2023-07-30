#!/bin/bash

# Variables
path="hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Check if the directory exists
if [ -d "$target_dir" ]; then
    echo "There is $name_of_directory Directory Exists!"
else
    echo "$name_of_directory Directory Not Exists!"
    # Create the directory
    mkdir -p "$target_dir"
    if [ $? -eq 0 ]; then
        echo "Directory created successfully!"
    else
        echo "Failed to create the directory."
        exit 1
    fi
fi

# Check if the source file exists
if [ -f "$source_dir/$filename_excel" ]; then
    # Copy the file from source to target directory
    cp "$source_dir/$filename_excel" "$target_dir/"
    echo "File Moved Successfully" > "$target_dir/log.txt"
else
    echo "Source file '$source_dir/$filename_excel' not found!"
fi