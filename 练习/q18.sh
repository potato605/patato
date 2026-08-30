#!/bin/bash
#18 bash_history统计最常使用命令
cat ~/.bash_history | awk '{print $1}' | sort | uniq -c | sort -nr | head -n8
