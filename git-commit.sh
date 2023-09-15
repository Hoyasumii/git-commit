#!/bin/bash

branch_atual=$(git rev-parse --abbrev-ref HEAD)
echo $branch_atual