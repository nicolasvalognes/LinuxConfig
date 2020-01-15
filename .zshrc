 if [ "$TMUX" = "" ]; then tmux; fi

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


alias ls='ls -l --color=auto'
alias lr='ls -r'
alias la='ls -a'
#alias lt='ls -alt'

alias grep='grep --color=always'
alias mygrep='grep -Hn --color=always'
alias ack='ack --color'
alias ag='ag --color'
alias hl='ag --passthrough'

alias gitlg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
alias git_del_branch='git branch | grep -v -E "master|develop|release" | xargs -n 1 git branch -d'

alias robo3t='~/00_Tools/robo3t/bin/robo3t &'
alias chrome='/usr/bin/google-chrome-stable %U &'
alias firedev='/home/nicolas/.local/firefox-70-developer-edition/firefox'

alias pylint='pylint --output-format=colorized'

## tmux
alias tmux='tmux -2'
#alias vi='nvim'
#alias vimdiff='nvim -d'
alias vi='~/00_Tools/neovim-image/nvim.appimage'
alias vimdiff='~/00_Tools/neovim-image/nvim.appimage -d'

alias postman='~/00_Tools/03_Postman/Postman'


alias py37_Plans2Bim='source ~/.pythonvenv/py372_Plans2Bim/bin/activate'
alias py37_2Bim='source ~/.pythonvenv/py372_2Bim/bin/activate'

alias plantuml='java -jar ~/00_Tools/plantuml.jar'

alias curl_get='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET'

alias mysql-workbench="/usr/bin/mysql-workbench"

#py37_Plans2Bim
source ~/.pythonvenv/py37_SaasBim/bin/activate

xrandr --auto

alias cat="less"
alias more="less"

# fix error on Fedora31 with XWayland
alias virtualbox="QT_QPA_PLATFORM=xcb $(which virtualbox)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP


test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
