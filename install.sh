# to run in sudo

# cURL
apt-get install curl libc6 libcurl3 zlib1g

# Tmux
apt-get install tmux

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# installing vim8
add-apt-repository ppa:jonathonf/vim
apt update
apt install vim
# TODO check vim --version > 8

# tools for vim
# nerd font
mkdir ~/.fonts
git clone https://github.com/ryanoasis/nerd-fonts.git ~/.fonts
~/.fonts/install.sh RobotoMono

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugins
vim +PluginInstall +qall

# compile YouCompleteme vim plugin for basic
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
~/.vim/bundle/YouCompleteMe/install.py
