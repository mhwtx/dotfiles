# Interactive config
if status is-interactive
    touch ~/.hushlogin
    set -U fish_greeting
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

# OrbStack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
