# Interactive config
if status is-interactive
    fastfetch
    zoxide init fish --cmd cd | source
end

# Paths
fish_add_path ~/.local/bin
fish_add_path ~/.lmstudio/bin
fish_add_path /opt/cuda/bin

# Environment
set -gx EDITOR hx

# Abbreviations
abbr -a c chezmoi
abbr -a cls clear
abbr -a d docker
abbr -a e exit
abbr -a ff fastfetch
abbr -a k kubectl
abbr -a nsmi nvidia-smi
abbr -a t temporal
abbr -a tf tofu

# Key bindings
# Tide's async prompt is `fish -c`, which does not init bindings. If
# fish_key_bindings is unset, emacs bind mode `default` is treated as
# vi-normal and the prompt character becomes ❮ instead of ❯.
set --global fish_key_bindings fish_default_key_bindings
