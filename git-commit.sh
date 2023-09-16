#!/bin/bash

description=$1

if git rev-parse --verify HEAD >/dev/null 2>&1; then
    activeBranch=$(git rev-parse --abbrev-ref HEAD)
    git commit -m "$activeBranch: $description"
else
    git commit "$description"
    activeBranch=$(git rev-parse --abbrev-ref HEAD)
fi

if git remote -v | grep -q "fetch"; then
    git push -u origin $activeBranch
fi