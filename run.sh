#!/bin/bash
# Assemble the source file to an object file
as -g -mfpu=vfpv2 -o $1.o $1.s

# Link the object file to create the executable
ld -o $1 $1.o

# Remove the object file (optional, cleanup)
rm $1.o

# Execute the compiled program and show the return code
./$1
echo $?
