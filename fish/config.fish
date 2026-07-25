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

# ===== Modern replacements for classic utilities =====
alias rg='rg --color=auto'
alias fd='fd --color=auto'
alias bat='bat --color=always --paging=always'
alias http='http --color=always'

# ===== Convenient shortcuts for new tools =====
alias cat='bat --color=always --paging=never' # Replace cat with bat (no paging)
alias df='duf' # Replace df with duf
alias top='btop' # Replace top with btop
