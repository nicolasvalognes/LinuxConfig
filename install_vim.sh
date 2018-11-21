#add-apt-repository ppa:jonathonf/vim
#apt update
#apt install vim
# TODO check vim --version > 8
sudo apt install vim-nox

mkdir ~/.vim
mkdir ~/.vim/.undo
mkdir ~/.vim/.backups
mkdir ~/.vim/.swaps

chmod 777 ~/.vim/.undo
chmod 777 ~/.vim/.backups
chmod 777 ~/.vim/.swaps

cp .vimrc ~/.vimrc

# tools for vim
 #nerd font
 #mkdir ~/.fonts
 #git clone https://github.com/ryanoasis/nerd-fonts.git ~/.fonts
 #~/.fonts/install.sh RobotoMono

sudo apt-get install build-essential cmake python-dev python3-dev fonts-powerline

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugins
vim +PluginInstall +qall

# compile YouCompleteme vim plugin for basic
~/.vim/bundle/YouCompleteMe/install.py
