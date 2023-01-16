# Copying Dotfiles

[Link to tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

```bash
cd ~/
git clone git@github.com:wyattlefevre/.dotfiles.git
alias config='/usr/bin/git --git-dir=/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```
