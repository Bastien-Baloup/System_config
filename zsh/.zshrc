## completion configuration
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle :compinstall filename '/home/bastien/.zshrc'

autoload -Uz compinit
compinit


## Main configuration
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt autocd nomatch PROMPT_SUBST COMPLETE_ALIASES
unsetopt beep extendedglob notify
bindkey -e

##zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES
# Default groupings per, https://spec.draculatheme.com, try to logically separate
#
# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#89b4fa'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a6e3a1,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#fab387,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#CBA6F7'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#74c7ec'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#74c7ec'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#74c7ec'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#d0a4c4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#d0a4c4'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#d0a4c4'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#d0a4c4'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#fae3b0'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#fae3b0'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#fae3b0'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#f28fad'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#fae3b0'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#f28fad'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#fae3b0'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#f28fad'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#cdd6f4'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f28fad'
ZSH_HIGHLIGHT_STYLES[path]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#d0a4c4'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#d0a4c4'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#CBA6F7'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#f28fad'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[default]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## key bindings
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

# setup key accordingly
[[ -n "${key[Home]}"          ]] && bindkey -- "${key[Home]}"           beginning-of-line
[[ -n "${key[End]}"           ]] && bindkey -- "${key[End]}"            end-of-line
[[ -n "${key[Insert]}"        ]] && bindkey -- "${key[Insert]}"         overwrite-mode
[[ -n "${key[Backspace]}"     ]] && bindkey -- "${key[Backspace]}"      backward-delete-char
[[ -n "${key[Delete]}"        ]] && bindkey -- "${key[Delete]}"         delete-char
[[ -n "${key[Up]}"            ]] && bindkey -- "${key[Up]}"             up-line-or-history
[[ -n "${key[Down]}"          ]] && bindkey -- "${key[Down]}"           down-line-or-history
[[ -n "${key[Left]}"          ]] && bindkey -- "${key[Left]}"           backward-char
[[ -n "${key[Right]}"         ]] && bindkey -- "${key[Right]}"          forward-char
[[ -n "${key[PageUp]}"        ]] && bindkey -- "${key[PageUp]}"         beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"      ]] && bindkey -- "${key[PageDown]}"       end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}"     ]] && bindkey -- "${key[Shift-Tab]}"      reverse-menu-complete
[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"   backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}"  forward-word

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget up-line-or-beginning-search down-line-or-beginning-search
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# setup of history search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[Up]}"            ]] && bindkey -- "${key[Up]}"             up-line-or-beginning-search
[[ -n "${key[Down]}"          ]] && bindkey -- "${key[Down]}"           down-line-or-beginning-search


## xterm title auto-update
autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (Eterm*|alacritty*|aterm*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## shell prompt
# git-prompt import
source ~/.git-prompt.sh

folder_prompt() {
  if [[ "$PWD" = "$HOME" ]];then
    echo " "
  else
    echo " ${PWD##*/}"
  fi
}


# prompt

#if in tty
if [ `tput colors` != "256" ]; then
PS1='
 ┌─── %n ── %m ── ${PWD##*/}$(__git_ps1 " ── %s") 
 └─► '
PS2='   └─► '
RPS1='%* ── %D{%d/%m/%Y}'
else
PS1='
 ╭─── %F{red}%B%n%b%f ── %F{magenta}%B%m%b%f ── %F{blue}%B$(folder_prompt)%b%f$(__git_ps1 " ── \033[32m\e[1m %s\e(B\e[m")
 ╰─%F{yellow}%B⬗%b%f '
PS2='   ╰─%F{magenta}⬗%f '
RPS1='%F{magenta}%*%f ── %F{red}%D{%d/%m/%Y}%f ── %F{blue}%?%f'
fi


# micro text editor setup
export MICRO_TRUECOLOR=1
export EDITOR=micro

# zoxide setup
eval "$(zoxide init --cmd cd zsh)"

## aliases

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
alias drun="docker run -it --network=host --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --shm-size 8G -v $HOME/dockerx:/dockerx -w /dockerx"
#symfony aliases
alias sf="php bin/console"

#folder aliases
alias home="cd ~/"
alias http="cd /srv/http"
alias dl="cd ~/Téléchargements/"
alias keymaps="cd ~/qmk_firmware/keyboards/sofle/keymaps"

#steam alias :
alias steam="steam -noverifyfiles"

#other aliases
alias fpacnew="find /etc -regextype posix-extended -regex \".+\.pac(new|save)\" 2> /dev/null"
alias setup-lol="sudo sysctl -w abi.vsyscall32=0"
alias ls="exa --long --header --inode --git"
alias tree="exa --long --tree --level=2 --git"
alias nano="micro"
alias cat="bat"
alias top="btm"
alias htop="btm"
alias ping="nping-rs"
alias neofetch="fastfetch"

## exports
# add spicetify to PATH
export PATH=$PATH:/home/bastien/.spicetify
# Enable xwayland corrections for firefox
export MOZ_ENABLE_WAYLAND=1

fastfetch