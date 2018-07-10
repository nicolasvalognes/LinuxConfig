# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/developer/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="gnzh"
ZSH_THEME="perso"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias ls='ls -l --color=auto'
alias ll='ls -al'
alias lt='ls -alt'

alias gitlg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
alias firefox='~/00_Tools/firefox/firefox &'

## tmux
alias tmux='tmux -2'
# Tmux split vim like
alias :vs='tmux split -h'
alias :sp='tmux split -v'
alias :q='tmux kill-pane'
alias :new='tmux new-window'
#alias tvim='tmux new-window -n vim vim'
alias :vsp='tmux splitw -h -p '

#alias Middleware
alias cd_mw='cd ~/01_Middleware/mw-dev-tools/'
alias cd_api='cd ~/01_Middleware/mw-dev-tools/work/sources/api-doc'
alias cd_com='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-common'
alias cd_cc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-control-center'
alias cd_edm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-experiment-data-manager'
alias cd_fica='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-fi-control-api'
alias cd_gb='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-global-bus'
alias cd_ifm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-infrastructure-manager'
alias cd_ldc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-live-data-collector'
alias cd_pr='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-program-runner'
alias cd_rc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-resource-collector'
alias cd_trm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-test-run-manager'
alias cd_tu='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-test-utils'

alias so_mw_env='source ~/01_Middleware/mw-dev-tools/work/venv/bin/activate'
alias run_cc='blsi_control_center -c blsi_config_1507105806809.json -i control_center'
alias run_fi_api='blsi_fi_control_api -c blsi_config_1507105806809.json -i fi_control_api'

alias run_mypy='mypy --ignore-missing-imports --disallow-untyped-defs blsi'
alias run_pytest='pytest tests --ignore tests/func'
alias run_pep8='pep8 ./blsi'

alias run_mongo='sudo docker run --rm  --net blsi --ip 172.18.0.10 -p 27017:27017 -v /tmp/mongodb:/data/db  mongo:3.4.4 '
alias run_influx='sudo docker run --rm --net blsi --ip 172.18.0.11 -p 8086:8086 -v /var/lib/influxdb:/var/lib/influxdb influxdb:latest /usr/bin/influxd'

#tmux
#echo 'Running tmux server : '
#tmux ls

so_mw_env
