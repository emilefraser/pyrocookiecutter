#!/bin/bash

REPO_GH=git@github.com
REPO_USER={{ cookiecutter.github_username }}
REPO_NAME={{ cookiecutter.project_slug }}
REPO_URL=${REPO_GH}:${REPO_USER}/${REPO_NAME}
REPO_LOCAL_PATH=/home/pyromaniac/repos/pyrocc/test/${REPO_NAME}

cd ${REPO_LOCAL_PATH}
rm -rf .git
git init
git remote add origin ${REPO_URL}
git remote -v
git pull origin main
git add *
git commit -m "init commit from pyrocc_packer cookiecutter template"
git push --set-upstream origin main
