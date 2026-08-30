#!/bin/bash
#11 复制文件为带当天日期备份
touch notes.txt
cp notes.txt "notes_$(date +%Y-%m-%d).txt"
ls notes_*.txt
rm -f notes.txt notes_*.txt
