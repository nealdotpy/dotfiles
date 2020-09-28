#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias emacs='emacs -nw'

# memes
alias please='sudo'

# utility
function pcsleep { systemctl suspend; }

# cd
function .. { cd '..'; }
function .... { cd '../..'; }
function ...... { cd '../../..'; }

# git : dotgit for tracking dotfiles.
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dgs='dotgit status'
function pygitbranch { python $HOME/bin/scripts/get_pwd_branch.py; }

# prompt stuff
WHITE=$(tput setaf 5)
YELLOW=$(tput setaf 4)
RESET=$(tput sgr0)

# bash prompt
PS1='\[$YELLOW\]\u\[$RESET\]:\W <\[$WHITE\]$(pygitbranch)\[$RESET\]> ζ '
