#!/bin/bash
if [ $# -ne 1 ];then
    echo "usage: $0 csvfile" >&2
    exit 1
fi
CSV="$1"
if [ ! -f "$CSV" ];then
    echo "error: file $CSV does not exist" >&2
    exit 2
fi

# 5xx最多前2个path，次数降序，同次数字典序
tail -n +2 "$CSV" | awk -F',' '$4 ~ /^5/{print $3}' | sort | uniq -c | sort -k1,1nr -k2,2 | head -n2

# latency_ms平均值保留两位小数
tail -n +2 "$CSV" | awk -F',' '{sum+=$5;cnt++} END{printf "avg latency: %.2f\n", sum/cnt}'
