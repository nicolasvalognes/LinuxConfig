sudo dnf install neovim

mkdir ~/.nvim
mkdir ~/.nvim/.undo
mkdir ~/.nvim/.backups
mkdir ~/.nvim/.swaps

chmod 777 ~/.nvim/.undo
chmod 777 ~/.nvim/.backups
chmod 777 ~/.nvim/.swaps

ln -s ~/.config/nvim/init.vim init.vim

# tools for vim
 #nerd font
 mkdir ~/.fonts
 git clone https://github.com/ryanoasis/nerd-fonts.git ~/.fonts
 ~/.fonts/install.sh


# Vundle

# install vim plugins
vim +PluginInstall +qall

