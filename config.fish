source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

if status is-interactive

    set -Ux EDITOR nvim
    set -g fish_key_bindings fish_vi_key_bindings
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
end
