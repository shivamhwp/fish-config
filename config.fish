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
alias ca cursor-agent
alias c cursor
alias tls "tmux list-sessions"

starship init fish | source

# this is for the the claude code openrouter integration.
set -l env_file ~/.config/fish/.env

if test -f "$env_file"
    for line in (cat "$env_file")
        # skip empties and comments
        test -z "$line";   and continue
        string match -q '#*' "$line"; and continue

        # split only on the FIRST '='
        set -l key   (string split -m 1 '=' "$line")[1]
        set -l value (string split -m 1 '=' "$line")[2]

        # export it to the environment
        set -gx $key $value
    end
else
    echo "env file not found: $env_file" >&2
end


export ANTHROPIC_BASE_URL="https://openrouter.ai/api"
export ANTHROPIC_AUTH_TOKEN="$OPENROUTER_CLAUDE_INTEGRATION_KEY"
export ANTHROPIC_API_KEY="" # Important: Must be explicitly empty

export ANTHROPIC_DEFAULT_SONNET_MODEL="moonshotai/kimi-k2:free"
export ANTHROPIC_DEFAULT_OPUS_MODEL="moonshotai/kimi-k2:free"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="moonshotai/kimi-k2:free"




# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path $HOME/.local/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

fish_add_path /Users/shivam/.spicetify
