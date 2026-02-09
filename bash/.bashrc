#
# ~/.bashrc
#

# set tty colors
if [ "$TERM" = "linux" ]; then
        printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
        printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
        printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
        printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
        printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
        printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
        printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
        printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
        printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
        printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
        printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
        printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
        printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
        printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
        printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
        printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
        printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
        printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
        clear
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# git-prompt import
source ~/.git-prompt.sh

folder_prompt() {
  if [[ "$PWD" = "$HOME" ]];then
    echo " "
  else
    echo " ${PWD##*/}"
  fi
}


#
#user┬hostname ─ folder ─ [Git Active Branch]
#    ╰─ $ 
PS1='\n\u┬\h ─ $(folder_prompt)$(__git_ps1 " ─  %s")\n       ╰─ \[\e[1m\]\$\[\e[0m\] '
PS2='        ─ \[\e[1m\]>\[\e[0m\] '

# import ptSh (pretty ls,touch,mkdir,etc)
source ptSh_set_aliases


# ls aliases
alias ls='ls --color=auto'
alias l='ls -lart'

#git aliases
alias gst="git status"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gc="git commit"
alias gp="git push"
alias gpup="git push -u origin"
alias gpl="git pull"
alias gpla="git pull --all"
alias gplap="git pull --all --prune"
alias gstash="git stash"
alias gpop="git stash pop"
alias ga="git add"
alias gaf="git add ."
alias gaa="git add -A"

#Docker and Doccker-compose aliases
alias d="docker"
alias de="docker exec -it"
alias d-c="docker-compose"
alias d-ce="docker-compose exec"
alias d-cu="docker-compose up"
alias d-cd="docker-compose down"

#symfony aliases
alias sf="php bin/console"

#folder aliases
alias home="cd ~/"
alias http="cd /srv/http"
alias dl="cd ~/Téléchargements/"

#steam alias :
alias steam="steam -noverifyfiles"
