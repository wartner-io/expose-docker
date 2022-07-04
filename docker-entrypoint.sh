#!/bin/bash

sed -i "s|username|${username}|g" ${exposeConfigPath} && sed -i "s|password|${password}|g" ${exposeConfigPath}

if [[ $# -eq 0 ]]; then
    exec expose serve ${domain} --port ${port} --validateAuthTokens
else
    exec expose "$@"
fi
