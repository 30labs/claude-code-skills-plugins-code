# Claude Code Skills, Subagents and Plugins: code

This repository holds the code of the book *Claude Code Skills, Subagents and Plugins*: every extension the book builds, one folder per chapter, each with the files that chapter builds as they stand at the chapter's end.

The pages print the parts the text discusses. When a chapter shows only part of a file, or describes a helper without printing it, the whole of it is here, so you can compare your tree against a known-good one when something you typed does not behave. Chapter 1 builds nothing and has no folder.

## Folders

- `ch02/`: the first skill, `summarise-changes`.
- `ch03/`: the `deploy` skill that only a person can invoke, and `typo/`, a copy with a misspelt field that the validator does not catch.
- `ch04/`: `fix-issue`, which takes `$ARGUMENTS`, and `ship`, which takes named arguments.
- `ch05/`: the `preflight` skill with its script and its checklist.
- `ch06/`: `home/`, `proj/` and `rsv/`, the trees that show which skill wins when two share a name, and a skill with a reserved name.
- `ch07/`: the `release-notes` subagent in `proj/`, and `a/`, four agent files with deliberate mistakes.
- `ch08/`: `t/`, two agent files with invented tools and misspelt fields.
- `ch09/`: `shipkit`, the plugin: manifest, the `preflight` skill with its script and checklist, the `release-notes` agent and the `status` command.
- `ch10/`: `mkt/`, a marketplace with `shipkit` inside it, and `bad/`, a marketplace whose name is reserved.
- `ch11/`: `shipkit` as released, with the eval case in `evals/preflight-runs/`, and `mkt2/`, a marketplace whose version disagrees with its plugin on purpose.

The book builds the early chapters inside a throwaway configuration directory, set with `CLAUDE_CONFIG_DIR`. In `ch02/` to `ch05/` the `skills/` folder is that directory's `skills/`; elsewhere the folders keep the paths the book uses, such as `proj/.claude/agents/`.

Folders the book breaks on purpose (`ch03/typo`, `ch06`, `ch07/a`, `ch08/t`, `ch10/bad`, `ch11/mkt2`) are there to be validated and to show what the validator says. Do not install them. The damaged copies the book makes with `cp` and `printf` are not stored; you make them with the commands in the chapter.

## Trying a folder

To try a skill or an agent, copy it into a project's `.claude/skills/` or `.claude/agents/`, then start Claude Code in that project. To try a plugin, run `claude --plugin-dir ./ch09/shipkit`. To check any folder without a session, run `claude plugin validate <folder>`, adding `--strict` to make warnings fail, for example `claude plugin validate ch09/shipkit --strict` or `claude plugin validate ch10/mkt`. Validation reads the files and makes no model call.

Set `CLAUDE_CONFIG_DIR` to an empty directory first if you do not want an experiment to touch your own configuration.

`ch05/skills/preflight/scripts/preflight.sh` and the copies in `ch09/` and `ch11/` are executable. Keep the permission bit when you copy them.

## The eval suite costs money

`ch11/shipkit/evals/preflight-runs/` is an eval suite for `claude plugin eval`. Running it calls a model on every case and grader, so each run is billed to your account. Nothing else in this repository calls a model. Eval results go to `evals/results/`, which `ch11/shipkit/.gitignore` keeps out of version control.

## Versions

The code was checked with Claude Code 2.1.330.

The code is released under the MIT License (see `LICENSE`).

Claude and Anthropic are trademarks of Anthropic, PBC. This repository is independent and is not affiliated with, endorsed by, or sponsored by Anthropic.
