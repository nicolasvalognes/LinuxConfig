add-apt-repository ppa:jonathonf/vim
apt update
apt install vim
# TODO check vim --version > 8

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

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugins
vim +PluginInstall +qall

# compile YouCompleteme vim plugin for basic
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
~/.vim/bundle/YouCompleteMe/install.py
