#!/bin/bash
#8 接收$1文件名参数，判断文件是否存在
if [ $# -lt 1 ];then
    echo "用法 $0 文件名"
    exit 1
fi
fname="$1"
if [ -f "$fname" ];then
    echo "文件 $fname 存在"
else
    echo "文件 $fname 不存在"
fi
