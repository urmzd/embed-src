#!/usr/bin/env bash

_commit_changes() {
  git add "${MARKDOWN_FILES[@]}"
  git commit -m "$COMMIT_MESSAGE"
}

_embed_files() {
  npx embedme "${MARKDOWN_FILES[@]}"
}

_push_changes() {
  git push
}

_cfg() {
  git config --global --add safe.directory /github/workspace
  git config --global user.email "$COMMIT_EMAIL"
  git config --global user.name "$COMMIT_NAME"
}

main () {
  _cfg
  _embed_files
  _commit_changes

  if [[ "$PUSH" == "true" ]]; then
    _push_changes
  fi
}

main
