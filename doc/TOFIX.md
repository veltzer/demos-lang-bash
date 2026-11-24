# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `src/includes/assoc.bashinc:76` - `assoc_is_assoc` is broken twice: it expands `$_assoc_name` (one underscore) instead of the local `__assoc_name` set on line 75, and it uses `=~` inside `[ ]`, which is a syntax error at run time. Change to `[[ "$(declare -p "${__assoc_name}")" =~ "declare -A" ]]` (as `array_is_array` does in `src/includes/array.bashinc:48`).
- `rsconstruct.toml:51-53` - shellcheck only sees `*.sh`; the 24 tracked `*.bashinc` files (including the shared helpers in `src/includes/`) are never checked, and shellcheck reports real errors in them (the item above, plus SC2068 unquoted `${!__array[@]}` at `src/includes/array.bashinc:20`). Add a `# shellcheck shell=bash` directive to each `.bashinc` and make the processor cover the extension (e.g. `src_extensions` / `src_files`), then fix the findings; `src/examples_standalone/source_bad_file/bad_syntax.bashinc` is the lesson and needs an inline `# shellcheck disable=` instead.

## Medium

- `src/examples/core/filesystems/create_temporary_file.sh:18` - `$(basename 0)` is missing the `$`, so the directory prefix is always the literal `0`; use `"$(basename "$0")"`. Also `${TMPDIR:-/tmp/}` glues the name directly onto `$TMPDIR` when it is set without a trailing slash; use `"${TMPDIR:-/tmp}/..."`.
- `tera.snippets/main.md.tera` (rendered into `README.md:28`) - the "how to run" example points at `./src/examples/core/booleans/booleans.bash`, but the file is `booleans.sh`. Fix the snippet and rebuild the README.
- `rsconstruct.toml:41,45,52` - ruff, mypy and shellcheck list `config` in `src_dirs`, but `config/` holds only `.lua` files (the repo's single Python file is `src/examples_standalone/catching_oom_kills/my_proc.py`). Drop `config` from those three processors so the src_dirs name only folders that hold the file type.
- `src/includes/assoc.bashinc:61` - stray `file="/etc/passwd"` in `assoc_config_read` sets an unused global (leaks into every caller's namespace); delete the line.

## Low

- `src/exercises/pstree/pstree_temp_file.sh:9` - writes to the fixed path `/tmp/out.txt` (predictable temp file, clobbers concurrent runs); use `filename=$(mktemp)` with a `trap 'rm -f "${filename}"' EXIT`.
- `src/examples/core/strictness/set_minus_e.sh:1` - the shebang is `#!/bin/bash -eu`, so `-e` is already on before the `set -e` on line 9 the example is meant to demonstrate; use a plain `#!/bin/bash` shebang (or `-u` only) so the lesson shows the before/after difference.
- `doc/TODO.txt:1-3` - first item ("make shellcheck pass ... with warning severity ... see the makefile") is stale: there is no makefile, and `shellcheck -S warning` already passes on every `.sh`. Remove it (or re-target it at the `.bashinc` files above).
- `src/examples/core/performace/` - directory name typo; rename to `performance`.
