# CachyOS
source /usr/share/cachyos-fish-config/cachyos-config.fish

# Path
fish_add_path ~/.local/bin
fish_add_path /opt/cuda/bin

# Environment
set -gx EDITOR helix

# Key bindings
# Tide's async prompt is `fish -c`, which does not init bindings. If
# fish_key_bindings is unset, emacs bind mode `default` is treated as
# vi-normal and the prompt character becomes ❮ instead of ❯.
set --global fish_key_bindings fish_default_key_bindings

# Tools
zoxide init fish --cmd cd | source
