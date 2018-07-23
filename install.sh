# to run in sudo
sudo apt install python-pip

# cURL
sudo apt install curl
#apt-get install curl libc6 libcurl3 zlib1g

# Tmux
apt-get install tmux
cp .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# yapf (python formatter)
pip install yapf

# installing vim8
#./install_vim.sh

# Oh-my-zsh
apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
cp perso.zsh-theme ~/.oh-my-zsh/themes/perso.zsh-theme
chsh -s /bin/zsh
