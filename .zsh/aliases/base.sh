# TODO: add a goodmorning that hooks into the Neighbor goodmorning
# TODO: goodmorning script notifies if there are unsaved changes in this repo
# environment
export EDITOR=nvim

alias vim='nvim'
alias lg='lazygit'
alias ls='ls -a1'
alias python='python3'
alias restart-awesome="echo 'awesome.restart()' | awesome-client"
alias restart-tmux="tmux kill-server"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias wp='nitrogen --restore'

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# tools
alias notifyDone='terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?"' -activate com.apple.Terminal
function define() {
  open dict://$1
}

# cd
alias cdw='cd ~/wyfig/'
alias cdlc='cd ~/programming_problems/leetcode/'
function cdv() {
  cd ~/.config/nvim/
  nvim
}

# sources
source ~/.zsh/aliases/qmk.sh
source ~/.zsh/aliases/neighbor.sh
source ~/.zsh/aliases/docker.sh

function lock() {
  echo 'creating screenshot...'
  scrot /tmp/screenshot.png
  echo 'converting...'
  convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
  echo 'locking...'
  i3lock -i /tmp/screenshotblur.png
}

# enable vi mode
bindkey -v

# tmux window renaming
tmux-window-name() {
  (~/.tmux/plugins/tmux-window-name/scripts/rename_session_windows.py &)
}

add-zsh-hook chpwd tmux-window-name

export PATH="/Users/wyatt/.local/bin:$PATH"
