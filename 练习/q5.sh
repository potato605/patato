#!/bin/bash
#5 stdout(1) stderr(2)
# stdout、stderr分开重定向
ls /nonexistent /tmp > out.txt 2> err.txt
# 两者重定向同一个文件
ls /nonexistent /tmp > both.txt 2>&1
cat out.txt
echo "----err----"
cat err.txt
rm -f out.txt err.txt both.txt
