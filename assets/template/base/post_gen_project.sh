#!/bin/bash
cd {{ cookiecutter.project_slug }}
rm -rf .git

git remote add origin git@github.com:{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}
git remote -v
git add *
git commit -m "cookiecutter base template"
git push --set-upstream origin main
