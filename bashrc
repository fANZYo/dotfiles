source ~/.bash_git
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f %{/usr/lib/bash-git-prompt/gitprompt.sh ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Default_Arch
  source /usr/lib/bash-git-prompt/gitprompt.sh
fi

alias ls='ls -hp --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -A'
alias tm='tmux'
alias ta='tmux attach'
alias tls='tmux ls'
alias vim='nvim'

alsi -n -u

# PS1='\n ┌─[$(uname -r)] \[\033[38;5;32m\]$(pwd)\[\033[0m\] \n └➤:\$ '
PS1='\n ┌─[$(uname -r)] \[\033[38;5;32m\]$(pwd)\[\033[0m\]$(__git_ps1 " > %s")\n └➤:\$ '
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

TERM='xterm-termite'
COLORTERM='screen-256color'

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Functions
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) rar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
ziprm () {
  if [ -f $1 ] ; then
    unzip $1
    rm $1
  else
    echo "Need a valid zipfile"
  fi
}
