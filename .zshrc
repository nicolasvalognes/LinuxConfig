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
alias lr='ls -r'
alias la='ls -a'
#alias lt='ls -alt'

alias grep='grep --color=always'
alias mygrep='grep -Hn --color=always'
alias ack='ack --color'
alias hl='ack --passthru '

alias gitlg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
alias git_del_branch='git branch | grep -v -E "master|develop|release" | xargs -n 1 git branch -d'

alias robo3t='~/00_Tools/robo3t/bin/robo3t &'
alias chrome='/usr/bin/google-chrome-stable %U &'
alias firefox='~/00_Tools/firefox/firefox'

alias pylint='pylint --output-format=colorized'

## tmux
alias tmux='tmux -2'
# Tmux split vim like
alias :vs='tmux split -h'
alias :sp='tmux split -v'
alias :bd='tmux kill-pane'
alias :new='tmux new-window'
alias :vsp='tmux splitw -h -p '

##alias Middleware
#alias so_python_dev_env='source ~/01_Middleware/mw-dev-tools/work/venv/bin/activate'
#alias so_python_test_env='source ~/00_Tools/pyvenv_353/bin/activate'
#alias cd_mw='cd ~/01_Middleware/mw-dev-tools/'
#alias cd_source='cd ~/01_Middleware/mw-dev-tools/work/sources'
#alias cd_doc='cd ~/01_Middleware/mw-dev-tools/work/sources/documentation'
#alias cd_am='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-acquisition-manager'
#alias cd_common='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-common'
#alias cd_cc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-control-center'
#alias cd_edm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-experiment-data-manager'
#alias cd_fica='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-fi-control-api'
#alias cd_gb='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-global-bus'
#alias cd_ifm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-infrastructure-manager'
#alias cd_interop='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-interoperability'
#alias cd_ldc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-live-data-collector'
#alias cd_pr='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-program-runner'
#alias cd_rc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-resource-collector'
#alias cd_salt='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-salt-config'
#alias cd_trm='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-test-run-manager'
#alias cd_tu='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-test-utils'
#alias cd_lf='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-log-forwarder'
#alias cd_nc='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-new-component'
#alias cd_ec='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-event-collector'
#alias cd_ed='cd ~/01_Middleware/mw-dev-tools/work/sources/mw-event-dispatcher'

#alias swagger_preview='cd ~/01_Middleware/mw-dev-tools/work/sources/documentation; ./generate_readable_doc.py; cd ./swagger-ui/dist; python -m http.server 8123 &; firefox --new-tab http://127.0.0.1:8123'

#alias cloc='~/00_Tools/cloc/cloc'

#alias vim='deactivate; so_python_dev_env; vim'
#alias git commit='deactivate; so_python_dev_env; git commit'

##alias pytest='pytest --cov=. --cov-append'

#so_python_test_env

alias source_toruk35='source ~/00_Tools/venv_toruk_py35/bin/activate'
alias source_toruk36='source ~/00_Tools/venv_toruk_py36/bin/activate'

alias run_mongo='sudo docker run --rm  --net blsi --ip 172.18.0.10 -p 27017:27017 -v /tmp/mongodb:/data/db  mongo:3.6.5 '
alias run_influx='sudo docker run --rm --net blsi --ip 172.18.0.11 -p 8086:8086 -v /var/lib/influxdb:/var/lib/influxdb influxdb:latest /usr/bin/influxd'

#alias run_mypy='mypy --ignore-missing-imports --disallow-untyped-defs blsi'
#alias run_pytest='pytest tests --ignore tests/func'
#alias run_pep8='pep8 ./blsi'

alias cd_mw='cd ~/01_Middleware/01-toruk'

source_toruk36
