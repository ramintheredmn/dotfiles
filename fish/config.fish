source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ramin/.ghcup/bin # ghcup-env

set -Ux QT_QPA_PLATFORMTHEME qt6ct
set -Ux TERMINAL kitty
set -Ux TERMINALEMULATOR kitty
set PATH $PATH /home/ramin/miniconda3/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ramin/miniconda3/bin/conda
    eval /home/ramin/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ramin/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ramin/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ramin/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

