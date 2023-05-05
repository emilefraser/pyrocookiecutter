#!/bin/bash

tree -a -I ".git" . > ./docs/structure.txt
cat ./docs/structure.txt
