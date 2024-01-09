This is an example markdown file.

```yaml
# example.yml

name: "Example"

on: [release]

jobs:
  embed-example:
    runs-on: ubuntu-latest
    steps:
      - name: "Checkout current repo"
        uses: actions/checkout@v3
      - name: "Run entrypoint script."
        # TODO: Replace the 1st capture group urmzd/embed-me@(.*) with the version merged into main.
        uses: urmzd/embed-md@1.0.2
        id: "embed-code"
        with:
          markdown-files: "README.md"
          commit-message: "chore: embed example using self"

```
