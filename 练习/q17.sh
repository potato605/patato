#!/bin/bash
#17 awk 第二列大于100，交换第1、3列
printf 'a 50 x\nb 150 y\nc 200 z\n' | awk '$2>100 {t=$1;$1=$3;$3=t;print}'
