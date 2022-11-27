#!/usr/bin/env bash

COMMIT_MESSAGE="$1"
FILES="${@:2}"

echo "Embedding files: $FILES"
npx embedme "$FILES"

echo "Commiting with message: $COMMIT_MESSAGE"
git add "$FILES"
git commit -m "$COMMIT_MESSAGE"
