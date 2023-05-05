#!/bin/bash

# github check
REPO_GH=git@github.com
REPO_USER={{ cookiecutter.github_username }}
REPO_NAME={{ cookiecutter.project_slug }}
REPO_URL=${REPO_GH}:${REPO_USER}/${REPO_NAME}
REPO_LICENSE="MIT"
REPO_TYPE="Packer"

echo "INFO: cookiecutter.github_username: ${REPO_USER}"
echo "INFO: cookiecutter.project_slug: ${REPO_NAME}"
echo "INFO: Checking if repo: ${REPO_NAME} exists at url: ${REPO_URL}"

[ "$(git ls-remote $REPO_URL 2> /dev/null)" ]

if [ "$(git ls-remote $REPO_URL 2> /dev/null)" ]
then
	echo "INFO: ${REPO_NAME} already exists"
else
	echo "INFO: ${REPO_NAME} does NOT exist"
	echo "INFO: Command to create: gh repo create --public --license ${REPO_LICENSE} --gitignore ${REPO_TYPE} ${REPO_NAME}"
	gh repo create --public --license ${REPO_LICENSE} --gitignore ${REPO_TYPE} ${REPO_NAME}
fi
