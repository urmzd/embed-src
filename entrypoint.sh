#!/usr/bin/env bash

# Variables:
# 	COMMIT_MESSAGE
# 	COMMIT_AUTHOR
# 	PUSH
# 	MARKDOWN_FILES

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
