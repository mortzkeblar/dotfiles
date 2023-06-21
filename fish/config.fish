if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ll='lsd -lh --group-dirs=first'
    alias la='lsd -a --group-dirs=first'
    alias l='lsd --group-dirs=first'
    alias lla='lsd -lha --group-dirs=first'
    alias ls='lsd --group-dirs=first'
    alias cat='bat'
    alias rn='ranger'
    alias nv='nvim'
    alias v='vim'
    alias cl='clear'
    set fish_greeting
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/mauronarea/.ghcup/bin $PATH # ghcup-env