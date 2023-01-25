# Dotfiles

## Before Starting

Set up ssh keys with github, it will make it much easier to push updates later. (just run `ssh-keygen`)

## Cloning the repo

```bash
cd ~/
git clone --bare git@github.com:wyattlefevre/.dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
```
## Only track files in repo

```bash 
config config --local status.showUntrackedFiles no
```
