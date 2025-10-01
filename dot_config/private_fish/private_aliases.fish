alias e="nvim"
alias cm="chezmoi"
alias fe='vim "$(fd -t f . | fzf)"'
alias cmd="SHELL=/data/data/com.termux/files/usr/bin/fish chezmoi cd"
alias cmu="chezmoi update --apply"
alias mm="et -p 63104 m"
alias sn="screen -c $HOME/.config/screen/screenrc"
#alias cat="bat --style=plain --pager=none"
#alias sn="screen -c $HOME/.config/screen/screenrc"
#alias py="python3"
#alias rb="ruby"

# git
alias gs="git status"
alias gc="git commit"
alias gmm="git add . && git commit -m 'u' && git rebase --continue && git push"
alias gcam="git commit -a -m"
alias gp="git push"
alias gu="git pull"
alias gl="git log"
alias gb="git branch"
alias gi="git init"
alias gcl="git clone"
alias gd="git diff --quiet && git diff --cached || git diff"

function g
  if count $argv > 0
    git $argv
  else
    git status --short
  end
end

function ga
  if count $argv > 0
    git add $argv
  else
    git add .
  end
end

# notes aliases
alias tk="ruby $HOME/code/scripts/bin/tk"
alias mt="ruby $HOME/code/scripts/bin/mt"
alias cb="ruby $HOME/code/food-log/add_entry.rb"

# navigation
alias x="exit"
alias j="__zoxide_z"
alias ji="__zoxide_zi"
