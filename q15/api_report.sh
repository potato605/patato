#!/bin/bash
curl -fsS http://127.0.0.1:8000/packages.json | jq -r '
["# Active Package Download Summary"],
["name","version","downloads"],
["---","---","---"],
( map(select(.status=="active" and .downloads >= 100))
  | sort_by(-.downloads, .name)
  | .[] | [.name, .version, (.downloads|tostring)] )
| @tsv
| gsub("\t";"|")
' > summary.md

