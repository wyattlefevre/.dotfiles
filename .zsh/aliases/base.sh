# TODO: add a goodmorning that hooks into the Neighbor goodmorning
# TODO: goodmorning script notifies if there are unsaved changes in this repo
alias vim='nvim'
alias lg='lazygit'
alias ls='ls -a1'
alias python='python3'
alias restart-awesome="echo 'awesome.restart()' | awesome-client"
alias restart-tmux="tmux kill-server"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

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

# macro to kill the docker desktop app and the VM (excluding vmnetd -> it's a service)
function kdo() {
  ps ax|grep -i docker|egrep -iv 'grep|com.docker.vmnetd'|awk '{print $1}'|xargs kill
}

# environment
export EDITOR=nvim

# sources
source ~/.zsh/aliases/qmk.sh
source ~/.zsh/aliases/neighbor.sh
source ~/.zsh/aliases/docker.sh

function lock() {
  scrot /tmp/screenshot.png
  convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
  i3lock -i /tmp/screenshotblur.png
}

export PATH="/Users/wyatt/.local/bin:$PATH"
