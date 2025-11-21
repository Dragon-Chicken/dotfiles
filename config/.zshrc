autoload -U colors && colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

zmodload zsh/complist
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33

setopt append_history inc_append_history share_history # better history
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # no need to write cd
setopt auto_param_slash # add / to end of dirs
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # include . files
setopt extended_glob # idk
setopt interactive_comments # allow comments in shell

NEWLINE=$'\n'
#PS1='%F{cyan}<%n@%m %~ >%f '
PROMPT="%F{magenta}%~${NEWLINE}%n@%m > %f"

# editor and stuff
export EDITOR=nvim
export FILE_MANAGER=yazi

# keybinds why tf doesn't zsh have these in by default??
# see man zshzle for all options
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[P" delete-char

# aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias lla='ls -lha'
alias tree='tree -a --gitignore'
alias grep='grep --color=auto'
alias ff='clear -x && fastfetch'

alias fire='aafire -driver curses'

eval "$(zoxide init zsh)"
function cd() {
    z "$@"
}

fastfetch
