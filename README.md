# Shell Scripting Bug: File Processing Errors

This repository demonstrates a common error in shell scripting related to file processing. The script attempts to iterate over a list of files, but it fails to handle filenames correctly, leading to potential word splitting and globbing issues. This can result in incorrect file processing or script failure.

The `bug.sh` file contains the buggy code, while `bugSolution.sh` provides the corrected version.

## Bug Description
The original script uses a simple loop to process files. However, the use of "`$files`" directly in the loop is unsafe. If any file name contains spaces or special characters, word splitting can occur, resulting in unexpected behavior. In addition, if a file name matches a glob pattern, globbing might expand to multiple files, causing unintended processing.

## Solution
The corrected script properly quotes each file name in the loop and calls `process_file` using the quoted filenames as arguments. This prevents word splitting and globbing, ensuring that each file is processed correctly.