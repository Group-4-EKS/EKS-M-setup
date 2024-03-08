#!/bin/bash

jsonname="addons.json"
aws eks describe-addon-versions > "${jsonname}"
jq -r '.addons[] | "\(.addonName) ----- \(.addonVersions[].addonVersion)"' "${jsonname}" | sort -u > result.txt
cat result.txt
