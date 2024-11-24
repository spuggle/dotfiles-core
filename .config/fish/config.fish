set -g fish_greeting
alias dotc='git --git-dir="$HOME/.local/backup/core/" --work-tree="$HOME"'
alias dotd='git --git-dir="$HOME/.local/backup/desktop/" --work-tree="$HOME"'
alias dott='git --git-dir="$HOME/.local/backup/termux/" --work-tree="$HOME"'

alias dotp='git --git-dir="$HOME/dev/.git" --work-tree="$HOME/dev/"'

if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q TMUX
        tmux new-session -As main
    end
end
source (starship init fish --print-full-init | psub)

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

fish_add_path "$HOME/.spicetify"
