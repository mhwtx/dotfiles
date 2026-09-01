source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
	fastfetch -s break:os:kernel:cpu:memory:gpu:disk:break:colors  --logo-type small
end

fish_add_path ~/.local/bin

