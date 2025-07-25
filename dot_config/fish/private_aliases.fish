alias e="vim"
alias cm="chezmoi"
alias gs="git status"
alias fe='vim "$(fd -t f . | fzf)"'
alias cmd="SHELL=/data/data/com.termux/files/usr/bin/fish chezmoi cd"
alias cmu="chezmoi update --apply"
alias gmm="git add . && git commit -m 'u' && git rebase --continue && git push"
alias gcam="git commit -a -m"
alias ms="mosh m"
#alias cat="bat --style=plain --pager=none"
#alias sn="screen -c $HOME/.config/screen/screenrc"
#alias py="python3"
#alias rb="ruby"

# notes aliases
alias tk="ruby $HOME/code/scripts/bin/tk"
alias mt="ruby $HOME/code/scripts/bin/mt"
alias cb="ruby $HOME/code/food-log/add_entry.rb"

# navigation
alias x="exit"
alias j="__zoxide_z"
alias ji="__zoxide_zi"
