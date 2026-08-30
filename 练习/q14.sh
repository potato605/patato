#!/bin/bash
#14 find xargs wc‑l，‑print0‑0处理空格文件名
find . -name "*.sh" -type f -print0 | xargs -0 wc -l
