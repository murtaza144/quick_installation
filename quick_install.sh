#!/bin/bash
files=$(ls -a $1 | grep -E '.[^.]+' | grep -vE '^..?$' | grep -v .git)
for file in `echo $files`; do
    ln -fs $1/$file ~/$file
done
echo "Installed Successfully"

