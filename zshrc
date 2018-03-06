# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fanzy/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# End of lines added by compinstall

# Variables
export BROWSER="google-chrome-stable"
export EDITOR="nvim"

# Dircolors
LS_COLORS="no=00:fi=00:di=00;1;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.html=00:*.css=00:*.sass=00:*.js=00:*.md=00"
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

### Theme
POWERLEVEL9K_MODE='awesome-fontconfig'

source  ~/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="┌─"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="│\n└➤ "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

# OS Icon
POWERLEVEL9K_OS_ICON_FOREGROUND='24'
POWERLEVEL9K_OS_ICON_BACKGROUND='250'

# Dir
POWERLEVEL9K_DIR_HOME_FOREGROUND='250'
POWERLEVEL9K_DIR_HOME_BACKGROUND='24'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='250'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='24'

# VCS
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='233'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='70'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='233'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='172'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='247'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='52'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='52'

# Characters
SEGMENT_SEPARATOR="\ue0b0"
PLUSMINUS="\u00b1"
BRANCH="\ue0a0"
DETACHED="\u27a6"
CROSS="\u2718"
LIGHTNING="\u26a1"
GEAR="\u2699"

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
alias https='http --default-scheme=https'

# alsi -n -u

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

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/fanzy/git/ganache/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/fanzy/git/ganache/node_modules/tabtab/.completions/electron-forge.zsh
