#!/bin/bash
tags=$(git tag)
for tag in ${tags}; do
    name=${tag:0:3}
    if [ "$name" = 'dev' ]; then
        git tag -d ${tag} && git push origin :refs/tags/${tag}
    else
        echo ${tag} "not is a development tag"
    fi
done