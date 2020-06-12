ln -s ~/.vim ~/.dotfiles/vim
ln -s ~/.vimrc ~/.dotfiles/vimrc
ln -s ~/.tmux ~/.dotfiles/tmux
ln -s ~/.tmux.conf ~/.dotfiles/tmux.conf

cd ~/.dotfiles
git submodule update --init --recursive
