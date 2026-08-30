#!/bin/bash
#13 home目录最常见5种后缀
find ~ -type f 2>/dev/null | sed -E 's/.*\.([^.]+)$/\1/' | sort | uniq -c | sort -nr | head -n5
