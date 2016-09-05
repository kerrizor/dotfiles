# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="kiva"
ZSH_THEME="bullet-train"

#for code ({000..255}) { print -nP -- "$code: %F{$code}%K{$code}Test%k%f " ; (( code % 8 && code < 255 )) || printf '\n'}

# bullet-train theme color options
# spectrum_ls for color codes (!)
BULLETTRAIN_PROMPT_CHAR="➜"

# BULLETTRAIN_RUBY_FG=165 #52
# BULLETTRAIN_RUBY_BG=237
# BULLETTRAIN_RUBY_FG=252
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_TIME_BG=237
BULLETTRAIN_TIME_FG=248

BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_DIR_BG=118
BULLETTRAIN_DIR_FG=022

BULLETTRAIN_GIT_COLORIZE_DIRTY=true
# BULLETTRAIN_GIT_COLORIZE_DIRTY_COLOR=orange

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby brew colored-man nyan rake)


# Customize to your needs...
export GOPATH="$HOME/.go"

export PATH=/usr/local/bin:$PATH:/bin:/usr/sbin:/sbin:/usr/bin:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=/usr/local/bin:/usr/local/sbin:$PATH


source $ZSH/oh-my-zsh.sh
alias ls='ls -F'
alias ll='ls -al'
alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
alias be='bundle exec'
alias rdm='rake db:migrate db:test:prepare'
alias dc='cd ~/projects/daily-curriculum'
alias mongo_start='brew services start mongodb'
alias mongo_stop='brew services stop mongodb'
alias tmux="TERM=screen-256color-bce tmux"

export PATH=./bin:$PATH

# add local bin to cover for GH specialized tools
ponysay -q
