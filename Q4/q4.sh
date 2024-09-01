#!/bin/bash

# a) -p: create directory if DNE; if already exists, no error 
mkdir -p temp_activity

# b) brace expansion and redirection to create multiple files without loop
touch temp_activity/temp{1..50}.sh

# c) change extensions of file from temp1.sh to temp25.sh to .txt
for i in {1..25}
do
    mv temp_activity/temp$i.sh temp_activity/temp$i.txt
done