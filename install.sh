#! /bin/sh
# Set zsh and oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp .zsh ~/

#nvim configuration
cp -r ./.config ~/
mkdir -p ~/.config/nvim/bundle/
cd ~/.config/nvim/bundle/
git clone https://github.com/gmarik/Vundle.vim.git
nvim +PluginInstall +qa!
cd ~/
