#!/bin/bash

git checkout --orphan lastest_branch && git add . && git commit -m "Hard rebase"

git branch -D main
git branch -m main

git push -f origin main
git push --set-upstream origin main
