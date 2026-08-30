#!/bin/bash
#3.glob：shell字符串通配扩展，不是正则
mkdir -p testdir
cd testdir
touch a.txt b.txt file1.txt file2.txt ac.txt bc.txt
echo "=== ls *.txt ==="
ls *.txt
echo "=== ls file?.txt ==="
ls file?.txt
echo "=== ls {a,b,c}.txt ==="
ls {a,b,c}.txt
cd ..
rm -rf testdir
