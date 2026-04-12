---
name: fsrc
description: Embed source files into documents using comment markers. Use when syncing code snippets into README, docs, or any text file that references external source files.
metadata:
  argument-hint: [files...]
---

# Embed Source Files

Embed source files into documents using `fsrc`.

## Steps

1. Ensure the target file has proper markers:
   - Opening: `<!-- fsrc src="path/to/file" -->` (or any comment style)
   - Closing: `<!-- /fsrc -->`
   - Optional: add `fence` or `fence="auto"` for code-fenced output
2. Run: `fsrc run $ARGUMENTS` (or `fsrc run README.md` if no args)
3. To check if files are up-to-date (CI): `fsrc run --verify <files>`
4. To preview changes: `fsrc run --dry-run <files>`

## Marker Syntax

Works with any comment style:

```
<!-- fsrc src="config.yml" fence="auto" -->   (HTML/Markdown)
// fsrc src="utils.py"                         (Rust/JS/Go)
# fsrc src="setup.sh"                          (Python/Shell/YAML)
-- fsrc src="schema.sql"                        (SQL/Lua)
```

## Fence Options

| Attribute | Behavior |
|-----------|----------|
| *(none)* | Raw insertion |
| `fence` | Code fence with auto-detected language |
| `fence="auto"` | Code fence with auto-detected language |
| `fence="python"` | Code fence with explicit language tag |
