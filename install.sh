# to run in sudo

# cURL
apt-get install curl libc6 libcurl3 zlib1g

# Tmux
apt-get install tmux
cp .tmux.conf ~/.tmux.conf

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
cp .perso.zsh-theme ~/.oh-my-zsh/themes/perso.zsh-theme

# yapf (python formatter)
pip install yapf

# installing vim8
./install_vim.sh
