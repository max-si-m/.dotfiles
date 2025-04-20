# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export HOMEBREW_NO_INSTALL_CLEANUP=1
# Path to your oh-my-zsh installation.
export ZSH=/Users/max-si-m/.oh-my-zsh
export XDG_CONFIG_HOME=$HOME/.config
VIM="nvim"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jbergantine-fixed"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(git wakatime)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh_profile

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias vim='nvim'
# git
alias g=hub
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias ghist='git hist'
alias ghc='git hc'
alias gp='git pull'
alias gst='git stash'
alias gstp='git stash pop'
alias gsts='git stash save'
#rebase
alias grbd='git rebase develop'
alias grbi='git rebase -i'
alias gchd='git checkout develop'
alias grbc='git rebase --continue'
alias ch='git checkout'
function chp(){ ch $1; gp }
alias grh='git reset HEAD'
alias s='git show'
alias gd='git diff --color'
alias gl='git log'
alias glo='git log --oneline'
alias gb="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(committerdate:relative)%(color:reset))| %(contents:subject) ' | column -t -s '|'"
alias clean_m="echo 'flush_all' | nc localhost 11211"
alias gds="git diff --staged"

alias be='bundle exec'
alias ber='bundle exec rspec'
alias bre='bundle exec rspec'
alias brdm='bundle exec rails db:migrate'
# ruby/ror
alias r='bundle exec rails'
alias rb='bundle'
alias rdm='rake db:migrate'
alias rap='rake assets:precompil'
alias rc='r c'
alias pr='bundle exec pronto run'
alias rout='bundle exec rake routes | grep "$(1)"'
#DOCKER
alias drm='docker rm $(docker ps -a -q -f status=exited)'
alias dr='docker run'
alias di='docker images'
alias dcu='docker-compose up'
alias dcb='docker-compose build'
alias dcp='docker-compose ps'
alias dcrmi='docker-compose rmi --force'
alias dce='docker-compose exec --user "$(id -u):$(id -g)"'
alias fs='foreman start'

alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PGHOST=localhost
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"
