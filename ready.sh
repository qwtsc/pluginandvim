SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

# nodejs install for vim plugin coc
sudo apt-get install nodejs

# install rust
export RUSTUP_IO_THREADS=1 # windows sublinux bug
curl https://sh.rustup.rs -sSf | sh
cargo install exa

# zsh install
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/qwtsc/pluginandvim.git
cp .zshrc ~/.zshrc #remeber to change the path to zsh
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd ~

# tmux install
sudo apt-get install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
cd $SHELL_FOLDER
cp .tmux.conf.local ~/.tmux.conf.local

# vim install
cd $SHELL_FOLDER
cp .vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# open vim to use PlugInstall to install plugin

