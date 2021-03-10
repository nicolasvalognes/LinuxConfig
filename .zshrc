# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

 #if [ "$TMUX" = "" ]; then tmux; fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/nicolas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="tywr"

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


alias ls='ls --color=auto'
alias lr='ls -lr'
alias la='ls -la'
#alias lt='ls -alt'

alias grep='grep --color=always'
alias ngrep='grep -Hn --color=always'
alias ack='ack --color'
alias ag='ag --color'
#alias hl='ag --passthrough'
alias hl="grep -e '^' -e"

#alias git='git-lfs'
alias gitlg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
alias git_del_branch='git branch | grep -v -E "master|develop|release" | xargs -n 1 git branch -d'
alias git_del_branch_force='git branch | grep -v -E "master|develop|release" | xargs -n 1 git branch -D'

alias robo3t='~/00_Tools/robo3t/bin/robo3t &'
alias chrome='/usr/bin/google-chrome-stable %U &'
alias firedev='/home/nicolas/.local/firefox-70-developer-edition/firefox'

alias pylint='pylint --output-format=colorized'

## tmux
alias tmux='tmux -2'
#alias vi='nvim'
#alias vimdiff='nvim -d'
alias vi='~/tools/neovim/nvim.appimage'
#alias nvim='~/tools/neovim/nvim.appimage'
alias vimdiff='~/tools/neovim/nvim.appimage -d'

alias plantuml='java -jar ~/00_Tools/plantuml.jar'

alias curl_get='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET'

alias mysql-workbench="/usr/bin/mysql-workbench"

alias pip='pip3'
source ~/.pythonvenv/py37saas/bin/activate

xrandr --auto
# disable integrated screen for homework
alias disable_integrated_screen='xrandr --output eDP-1 --off'

alias cat="less"
alias more="less"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS="--RAW-CONTROL-CHARS"
# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# dev command wisebi m specific
alias p2b='npm install; export P2B_ENV_PATH=~/.env/plans2bim.env;ng serve --port 4200 --poll=2000 --ssl true '
alias init_p2b_core_api_database='rm -rf p2b_core_api/*/migrations/00*; export P2B_ENV_PATH=~/.env/plans2bim.env; python manage.py makemigrations --settings=p2b_core_api.settings.settings_local; export P2B_ENV_PATH=~/.env/plans2bim.env; python manage.py migrate --settings=p2b_core_api.settings.settings_local; export P2B_ENV_PATH=~/.env/plans2bim.env; export DJANGO_SETTINGS_MODULE="p2b_core_api.settings.settings_local"; ./start_core_local.sh'
alias init_p2b_middleware_database='rm -rf p2b_middleware/*/migrations/00*; export P2B_ENV_PATH=~/.env/plans2bim.env; python manage.py makemigrations --settings=p2b_middleware.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; python manage.py migrate --settings=p2b_middleware.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; ./devTools/start_control_center '

alias g2b='npm install; export P2B_ENV_PATH=~/.env/grid2bim.env;ng serve --port 4210 --poll=2000 --ssl true '
alias init_g2b_core_api_database='rm -rf g2b_core_api/*/migrations/00*; export P2B_ENV_PATH=~/.env/grid2bim.env; python manage.py makemigrations --settings=g2b_core_api.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; python manage.py migrate --settings=g2b_core_api.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; export DJANGO_SETTINGS_MODULE="g2b_core_api.settings.settings_local"; ./start_core_local.sh'
alias init_g2b_middleware_database='rm -rf p2b_middleware/*/migrations/00*; export P2B_ENV_PATH=~/.env/grid2bim.env; python manage.py makemigrations --settings=p2b_middleware.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; python manage.py migrate --settings=p2b_middleware.settings.settings_local; export P2B_ENV_PATH=~/.env/grid2bim.env; ./devTools/start_control_center '

alias sd=' tmux split-window -h -p 70; tmux select-pane -t 0; tmux split-window -v; '

alias blender='~/tools/blender-2.83.4-linux64/blender'
alias bimize='~/workspace/bimize/build/gui/Bimize'

source /opt/intel/openvino/bin/setupvars.sh
export PATH=~/.npm-global/bin:$PATH

export PYTHONPATH=/home/nicolas/.local/lib/python3.7/site-packages/:$PYTHONPATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

