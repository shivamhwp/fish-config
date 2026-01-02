# Git aliases
alias gs "git status"
alias ga "git add"
alias gc "git commit -m"
alias gp "git push"
alias gl "git pull"
alias gb "git branch"
alias gd "git diff"
alias gco "git checkout"
alias gcb "git checkout -b"
alias y yazi
alias cr "cargo run"
alias oc opencode
alias z zed
alias cc claude
alias ca cursor-agent
alias c cursor
alias tls "tmux list-sessions"

starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path $HOME/.local/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

fish_add_path /Users/shivam/.spicetify
