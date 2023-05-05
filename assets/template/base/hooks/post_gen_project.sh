#!/bin/bash
cd {{projwct_slug}}
rf .git
git remote add origin git@guthub.com:{{guthub_username}}/{{project_slug}}
git add *
git commit -m "cookiecutter base template"
git push
