# docker
alias du='docker compose up'
alias dbu='docker compose up --build'
alias dd='docker compose down'
alias dr='docker compose run --rm'

# macro to kill the docker desktop app and the VM (excluding vmnetd -> it's a service)
function kdo() {
  ps ax|grep -i docker|egrep -iv 'grep|com.docker.vmnetd'|awk '{print $1}'|xargs kill
}

