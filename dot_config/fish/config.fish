source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
    fastfetch -s break:os:kernel:shell:cpu:memory:gpu:disk:battery:break:colors
end

fish_add_path ~/.local/bin
fish_add_path /opt/cuda/bin
