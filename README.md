# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## What's here

| Source | Destination |
|--------|-------------|
| `dot_gitconfig` | `~/.gitconfig` |
| `dot_config/fish/` | `~/.config/fish/` |
| `dot_config/helix/` | `~/.config/helix/` |

Scripts:

- `run_once_before_install-01-configure-gh.sh` — install GitHub CLI and set up auth
- `run_onchange_after_install-02-fisher.sh.tmpl` — update Fisher plugins when `fish_plugins` changes

## Setup

```sh
# Install chezmoi (if needed), then init from this repo
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/mhwtx/dotfiles.git
```

Or, if chezmoi is already installed:

```sh
chezmoi init --apply https://github.com/mhwtx/dotfiles.git
```

## Day-to-day

```sh
chezmoi edit ~/.config/fish/config.fish   # edit a managed file
chezmoi apply                             # apply changes to $HOME
chezmoi diff                              # preview pending changes
chezmoi update                            # pull + apply
```

`c` is an abbreviation for `chezmoi` in fish.

## Notes

- `README.md` and `AGENTS.md` are listed in `.chezmoiignore` so they stay in the repo only.
- Fish plugins are declared in `dot_config/fish/fish_plugins` and installed via Fisher.
- Editor is Helix (`hx`); shell is fish.
