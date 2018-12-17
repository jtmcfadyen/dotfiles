FPATH="$HOME/.zshcomp:$FPATH"
HISTFILE=~/.histfile
HISTSIZE=1000
PROMPT='%F{153}%n%f@%F{153}%m%f %F{141}%1~%f %# '
SAVEHIST=100000

bindkey -e

setopt \
       cbases \
       noclobber \
       extendedglob \
       histignorealldups \
       histignorespace

autoload -U colors
colors

autoload -Uz compinit
compinit

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
