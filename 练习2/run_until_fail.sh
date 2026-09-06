#!/bin/bash
count=0
while true; do
    ((count++))
    ./maybe_fail.sh > out.txt 2> err.txt
    if [[ $? -ne 0 ]]; then
        echo "失败，总共运行 $count 次"
        echo "---stdout---"
        cat out.txt
        echo "---stderr---"
        cat err.txt
        break
    fi
done
