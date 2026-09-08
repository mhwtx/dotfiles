# Agent notes

Chezmoi-managed dotfiles for https://github.com/mhwtx/dotfiles.

## Layout

This repo is a **chezmoi source state**, not a home directory mirror.

- Source files live here; destinations are under `$HOME`.
- Naming maps source → target:
  - `dot_` → `.` (e.g. `dot_gitconfig` → `~/.gitconfig`)
  - `dot_config/...` → `~/.config/...`
  - `*.tmpl` → templates rendered by chezmoi
  - `run_once_*` / `run_onchange_*` → install/update scripts (not copied into `$HOME`)
- `.chezmoiignore` keeps repo docs (`README.md`, `AGENTS.md`) out of `$HOME`.

## Do

- Prefer editing source files in this repo, then `chezmoi apply` (or ask the user to apply).
- Keep chezmoi naming conventions when adding managed files.
- Put one-shot bootstrap in `run_once_*`; put “rerun when inputs change” logic in `run_onchange_*` (often with a hash include in a `.tmpl`).
- Keep fish plugin list in `dot_config/fish/fish_plugins`.

## Don't

- Don't invent a parallel install path that bypasses chezmoi.
- Don't commit secrets, tokens, or machine-local private keys.
- Don't move docs into `$HOME`; keep them ignored via `.chezmoiignore`.
- Don't rename managed files without updating the corresponding target path expectations.

## Quick map

| Area | Path |
|------|------|
| Git | `dot_gitconfig` |
| Fish | `dot_config/fish/` |
| Helix | `dot_config/helix/` |
| GH bootstrap | `run_once_before_install-01-configure-gh.sh` |
| Fisher sync | `run_onchange_after_install-02-fisher.sh.tmpl` |
