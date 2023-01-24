# shortcuts
alias lg='lazygit'
alias python='python3'
alias restart-awesome="echo 'awesome.restart()' | awesome-client"
alias wp='nitrogen --restore'

# open directories
function cdz() {
  cd ~/.zsh/aliases/
  nvim
}

function cdv() {
  cd ~/.config/nvim/
  nvim
}

function cdaw() {
  cd ~/.config/awesome/
  nvim rc.lua
}

function cdal() {
  cd ~/.config/alacritty/
  nvim alacritty.yml
}

# nvim
alias vim='nvim'
export EDITOR=nvim

# tmux
alias restart-tmux="tmux kill-server"
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# -------------------
# docker
# -------------------
alias du='docker compose up'
alias dbu='docker compose up --build'
alias dd='docker compose down'
alias dr='docker compose run --rm'

# macro to kill the docker desktop app and the VM (excluding vmnetd -> it's a service)
function kdo() {
  ps ax|grep -i docker|egrep -iv 'grep|com.docker.vmnetd'|awk '{print $1}'|xargs kill
}

# qmk firmware
alias qmkc='qmk compile -kb sofle/rev2 -km wylord'
alias flash='qmk flash -kb sofle/rev2 -km wylord'
alias flashr='qmk flash -kb sofle/rev2 -km wylord -bl avrdude-split-right'
alias flashl='qmk flash -kb sofle/rev2 -km wylord -bl avrdude-split-left'
alias cdq='cd ~/qmk_firmware/keyboards/sofle/keymaps/wylord'


# i3lock
function lock() {
  echo 'creating screenshot...'
  scrot /tmp/screenshot.png
  echo 'converting...'
  convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
  echo 'locking...'
  i3lock -i /tmp/screenshotblur.png
}

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

