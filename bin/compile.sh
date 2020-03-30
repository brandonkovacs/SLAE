#!/bin/bash

# Simple script to compile an assembly file.
#
# Usage:
# ./compile.sh file.asm
#

INPUT_FILE=$1
OUTPUT_FILE=$(echo $INPUT_FILE | cut -d '.' -f1)
OBJECT_FILE="$OUTPUTFILE.o"

# Ensure valid file was passed in as first argument
if [ "$#" -ne 1 ] || [ ! -f "$INPUT_FILE" ]; then
  echo "Error! Please provide a valid input file as the first argument."
  echo "Usage: $0 <file.asm>"
  exit 1
fi

# Compile assembly code into an object file
nasm -f elf32 -o "$OBJECT_FILE" "$INPUT_FILE"

# Link object file to an exectutable
ld -o "$OUTPUT_FILE" "$OBJECT_FILE"

# Clean up object file
rm "$OBJECT_FILE"
