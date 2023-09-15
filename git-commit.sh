#!/bin/bash

description=$1

if git rev-parse --verify HEAD >/dev/null 2>&1; then
    activeBranch=$(git rev-parse --abbrev-ref HEAD)
    git commit -m "$activeBranch: $description"
    # git push
else
    git commit "$description"
    activeBranch=$(git rev-parse --abbrev-ref HEAD)
    # git push -u origin $activeBranch
    # TODO: Checar se há repositórios remotos
fi