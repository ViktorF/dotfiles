# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/martin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Source /etc/profile to execute startup scripts
source /etc/profile

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Base16 Shell
BASE16_SHELL="$HOME/base16-flat.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set default username
# DEFAULT_USER="martin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo zsh-syntax-highlighting ssh-agent)

# User configuration

# Set ~/bin directory
export PATH="$PATH:/usr/lib/ccache/bin/:$HOME/bin"

# Latex configuration
# export PATH="$PATH:/opt/texlive/2014/bin/x86_64-linux"
# export INFOPATH="$INFOPATH:/opt/texlive/2014/texmf-dist/doc/info"
# export MANPATH="$MANPATH:/opt/texlive/2014/texmf-dist/doc/man"

# Tomcat configuration
export CATALINA_HOME="/var/lib/apache-tomcat-8.0.18/"
export CATALINA_BASE="/var/lib/apache-tomcat-8.0.18/"

source $ZSH/oh-my-zsh.sh

# Preferred stuff
export EDITOR='vim'
export BROWSER='firefox-nightly'

# Puush API KEY to upload to puush.me
export PUUSH_API_KEY="70F4976391A9BCB16168014B5C3FBCD9"


# Coloured Man-pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;40;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='vim'
# else
# export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"
zstyle :omz:plugins:ssh-agent identities id_rsa

export DISPLAY=":0"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'

#emulte xbox controller from ps3 controller
alias ps3e="sudo xboxdrv --silent --detach-kernel-driver"

# I am lazy so i don't want to type sudo before shutdown/reboot/....
alias reboot="sudo reboot"
alias poweroff="sudo poweroff"
alias zzz="sudo zzz"
alias ZZZ="sudo ZZZ"
