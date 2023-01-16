# TODO: add a goodmorning that hooks into the Neighbor goodmorning
# TODO: goodmorning script notifies if there are unsaved changes in this repo
alias vim='nvim'
alias lg='lazygit'
alias ls='ls -a | pr -t -3'
alias python='python3'

# tools
alias notifyDone='terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?"' -activate com.apple.Terminal
function define() {
  open dict://$1
}

# cd
alias cdw='cd ~/wyfig/'
alias cdlc='cd ~/programming_problems/leetcode/'
function cdv() {
  cd ~/wyfig/neovim/
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

export PATH="/Users/wyatt/.local/bin:$PATH"
