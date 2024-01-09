#!/usr/bin/env bash

# Inputs.
COMMIT_MESSAGE="${COMMIT_MESSAGE:-"Embed files"}"
COMMIT_AUTHOR="${COMMIT_AUTHOR:-"GitHub Actions <noreply@github.com>"}"
PUSH="${PUSH:-"false"}"
MARKDOWN_FILES="${MARKDOWN_FILES:-"README.md"}"

commit_changes() {
  git add "${MARKDOWN_FILES[@]}"
  git commit -m "$COMMIT_MESSAGE" --author="$COMMIT_AUTHOR"
}

embed_files() {
  npx embedme "${MARKDOWN_FILES[@]}"
}

push_changes() {
  git push
}

embed_files
commit_changes

if [[ "$PUSH" == "true" ]]; then
  push_changes
fi
