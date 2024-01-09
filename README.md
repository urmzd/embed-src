# Embed MD

Embed code directly into your markdown files with ease.

## Usage

```yaml
# examples/example.yml

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

## Credits

Here are some of the open-source tools which make this project possible:

- [embedme](https://github.com/zakhenry/embedme)
