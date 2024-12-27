#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.
files=("file1.txt" "file2.txt" "file3.txt")

for file in $files; do
  echo "Processing: $file"
  # Error: Using $file directly in a command without proper quoting can lead to word splitting and globbing issues.
  process_file $file
done

# Function to simulate file processing (replace with your actual processing logic)
process_file() {
  echo "Processing file contents: "  #The below line does not include file content
}
