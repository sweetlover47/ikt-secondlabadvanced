#!/bin/bash

which cat
which less
which grep
which find
echo $PATH
echo "#include <stdio.h>" > hello.c
echo " int main(){ " >> hello.c
echo -E "printf(\"Hello\n\");" >> hello.c
echo "return 0; }" >> hello.c
gcc -o hello hello.c
./hello
mkdir new_dir
cd new_dir
./hello
cd
export PATH=$PATH:new_dir
./hello
