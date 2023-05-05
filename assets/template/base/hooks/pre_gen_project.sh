#!/bin/bash

# github check
# create
# post remote .git
# remove .git
# add git
glen=$(git git-ls git@github.com:emilefraser/{{project_slug}})
if [[ $glen -lt 0 ]]
then
    gh repo create {{project_slug}}
fi
