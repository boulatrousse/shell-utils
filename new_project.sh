#!/bin/bash

file=$1
name="$(echo $1 | tr 'a-z' 'A-Z' | tr '.' '_' | tr ' ' '_' | tr '-' '_')"

mkdir ${file}
cd ${file}
mkdir includes srcs
touch Makefile

###############################
### LIBRARY

cd includes
touch "${file}.h"
echo -e "
#ifndef ${name}.H
# define ${name}.H

# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>

#endif" >> ${file}.h

vim ${file}.h -c "normal! dd" -c wq

###############################
### MAIN

cd ..
cd srcs
touch main.c
echo -e "
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv)
{

                return (0);
}" >> main.c

vim main.c -c "normal! dd" -c wq