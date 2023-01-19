#!/bin/bash

for file in *.c; do
        vim $file -c "normal! gg=G" -c wq
        sed 's/\tint /\tint\t\t/g' $file > temp && mv temp $file
        sed 's/\tchar /\tchar\t\t/g' $file > temp && mv temp $file
        sed 's/\tt_node /\tt_node\t\t/g' $file > temp && mv temp $file
        sed 's/s_node /s_node\t/g' $file > temp && mv temp $file
        sed 's/void /void\t/g' $file > temp && mv temp $file
done