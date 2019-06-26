# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/nicolas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="perso"
ZSH_THEME="perso2"

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
plugins=(
  git
  git-flow
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
  django
  colorize
)

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


#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#    source /etc/profile.d/vte-2.91.sh
#fi

source ~/.profile

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


#alias ls='lsd'
alias ls='lsd -l --color=auto'
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

alias pylint='pylint --output-format=colorized'

## tmux
alias tmux='tmux -2'
alias swagger_preview='cd ~/01_Workspace/02_pandora_doc; ./generate_readable_doc.py; cd ./swagger-ui/dist; python -m http.server 8123 &; firefox --new-tab http://127.0.0.1:8123'
alias run_mongo='sudo docker run --rm  --net blsi --ip 172.18.0.10 -p 27017:27017 -v /tmp/mongodb:/data/db  mongo:3.6.5 '
alias run_influx='sudo docker run --rm --net blsi --ip 172.18.0.11 -p 8086:8086 -v /var/lib/influxdb:/var/lib/influxdb influxdb:latest /usr/bin/influxd'
#alias pytestcov='coverage run -m pytest'
alias vi='vim'
alias robo3t='~/00_Tools/robo3t/bin/robo3t'

alias run_postgres='sudo docker run --name postgres-db --rm -p 127.0.0.1:5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres'

alias py37_PlansToBim_middleware='source ~/.pythonvenv/py37_PlansToBim_middleware/bin/activate'
alias py37_PlansToBim_core='source ~/.pythonvenv/py37_PlansToBim_core/bin/activate'
alias py37_celery='source ~/.pythonvenv/py37_celery_rabbitMQ/bin/activate'
#alias pytest='pytest -vv --setup-show --boxed --capture=no'
#alias flake8='flake8 -strict'
#alias run_mypy='mypy --ignore-missing-imports --disallow-untyped-defs blsi'
#alias run_pytest='pytest tests --ignore tests/func'
#alias run_pep8='pep8 ./blsi'

alias plantuml='java -jar ~/00_Tools/plantuml.jar'

alias curl_get='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET'

alias mysql-workbench="/usr/bin/mysql-workbench"
