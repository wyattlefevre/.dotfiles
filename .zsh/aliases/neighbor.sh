# Neighbor commands

# cd shortcuts
alias cdn='cd ~/neighbor/'
alias cdcb='cd ~/neighbor/config-management/docker && source ~/.bashrc && exec bash'
alias cdc='cd ~/neighbor/config-management/docker'
alias cdp='cd ~/neighbor/payments'
alias cdreact='cd ~/neighbor/react-frontend'
alias cdrails='cd ~/neighbor/rails-api'
alias cdssr='cd ~/neighbor/ssr-frontend'
alias cds='cd ~/neighbor/search/'

# docker
alias dra='docker compose run --rm api'
alias rc='cd ~/neighbor/config-management/docker/ && docker compose run --rm api rails c'
alias rcs="cd ~/neighbor/rails-api/ && ./eks-exec -c 'rails c' -a -e staging"
alias rcprod="cd ~/neighbor/rails-api/ && ./eks-exec -c 'rails c' -a -e production"
alias clear-pids='docker compose run --rm api rm /usr/src/app/tmp/pids/server.pid'

# rails
alias rails-test='docker compose run --rm api rails test' #docker compose run --rm api rails test <path to file> --name <test name>
alias rails-rubocop='dra bundle exec rubocop --parallel --format progress --except Layout/LineLength -A'
alias migrate-db='docker compose run --rm api rails db:migrate RAILS_ENV=development'

# front end
alias react-test='docker compose run --rm frontend yarn test:unit'
alias react-test-all='docker compose run --rm frontend yarn test:unit:ci'

# local env
alias cpenv="cp ~/neighbor/config-management/docker/.env.docker.frontend ~/neighbor/react-frontend/.env"

# aws roles
# TODO
alias vs="vaulted shell neighbor"

# goodmorning
function ngm() {
  echo 'updating config-management'
  cd ~/neighbor/config-management/
  git checkout master
  git pull

  echo 'updating react-frontend'
  cd ~/neighbor/react-frontend/
  git checkout staging
  git pull

  echo 'updating rails-api'
  cd ~/neighbor/rails-api/
  git checkout staging
  git pull

  echo 'updating ssr-frontend'
  cd ~/neighbor/ssr-frontend/
  git checkout staging
  git pull

  echo 'updating authorizer'
  cd ~/neighbor/authorizer/
  git checkout staging
  git pull

  echo 'updating search'
  cd ~/neighbor/search/
  git checkout staging
  git pull

  echo 'updating payments'
  cd ~/neighbor/payments/
  git checkout staging
  git pull

  echo 'running brew upgrade'
  sudo apt upgrade
}

export REPO_ROOT_DIR_ADDRESS=~/neighbor
