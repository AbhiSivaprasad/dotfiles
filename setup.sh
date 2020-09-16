ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux ~/.tmux
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# install all submodules
cd ~/.dotfiles
git submodule update --init --recursive

# source custom bashrc from default bashrc
echo "source ~/.dotfiles/bashrc.cust" >> ~/.bashrc
source ~/.bashrc
