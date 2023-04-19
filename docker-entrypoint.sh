#!/usr/bin/env bash

COMMIT_MESSAGE="$1"
FILES="${@:2}"

echo "Embedding files: $FILES"
npx embedme "$FILES"

echo "Commiting with message: $COMMIT_MESSAGE"

git config user.name "embed-md bot"
git config user.email "embed-md-bot@urmzd.com"

git pull --rebase
git add "$FILES"
git commit -m "$COMMIT_MESSAGE"
git push
