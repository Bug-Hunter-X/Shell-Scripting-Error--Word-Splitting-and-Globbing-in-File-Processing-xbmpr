#!/bin/bash

# This script demonstrates the corrected file processing using proper quoting
files=("file1.txt" "file2.txt" "file3.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Corrected: Using quoted variables to prevent word splitting and globbing
  process_file "$file"
done

# Function to simulate file processing (replace with your actual processing logic)
process_file() {
  echo "Processing file contents: $(cat "$1")"
}
