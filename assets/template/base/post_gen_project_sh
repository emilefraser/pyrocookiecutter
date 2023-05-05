#!/bin/bash
cd {{ cookiecutter.project_slug }}
rm -rf .git

git remote add origin git@github.com:{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}
git add *
git commit -m "cookiecutter base template"
git push
