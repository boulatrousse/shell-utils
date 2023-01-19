#!/bin/bash

touch main.c

file="main.c"

echo -e "
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv)
{

        return (0);
}" >> $file

vim ${file} -c "normal! dd" -c wq