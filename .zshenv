# zsh completions for brew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

alias clean='rm *~'

export EDITOR='emacs'

alias e='emacs'
alias ee='e ~/.emacs'

alias ez='emacs ~/.zshenv'
alias sz='source ~/.zshenv'
alias eb='ez'
alias el='less ~/.zshenv'
alias ls='ls --color'
alias sb='sz'

alias ..='cd ..'
alias .='cd .'
alias ~='cd ~'

# RoR
alias rc="bin/rails c"
alias rs="bin/rails s"
alias r="bin/rails dev"
alias rdev="foreman start -f Procfile.dev"

# RN
alias rnios='tsc && npx react-native run-ios'
alias rn='rnios'

# git
alias gc='git commit -a'
alias ga='git commit -a --amend'
alias gd='clear && git diff'
alias gup='git rebase -i'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gs='git show'
alias gbr='git branch -a'
alias gfo='git fetch origin'
alias gri='git fetch origin; git rebase -i origin/main'
alias grr='git fetch origin; git pull --rebase'
alias gdrop='git stash && git stash drop'
alias gpush='git push origin main'

function _gb {
    git checkout -b $1 $2
}

function gb {
    _gb $1 'origin/main'
}

function gbb {
    _gb $1 $2
}
