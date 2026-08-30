#!/bin/bash
#6 仅当/tmp/mydir不存在时创建
[ ! -d "/tmp/mydir" ] && mkdir /tmp/mydir
ls -ld /tmp/mydir
rmdir /tmp/mydir
