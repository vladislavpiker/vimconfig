#!/usr/bin/bash
# Install normal vim
sudo apt remove vim
sudo apt remove vim.tiny
sudo apt autoremove
sudo apt install vim-nox vim-qtk
echo "vim-nox and vim-gtk installed"

# Install vim-plug(https://github.com/junegunn/vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "vim-plug isntalled"

# install mdr for prewiew markdown files
wget https://github.com/MichaelMure/mdr/releases/download/v0.2.5/mdr_linux_amd64
mv mdr_linux_amd64 /usr/bin/mdr
echo "MDR installed"

# Move vim config to home directory
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/vimrc.baskup
    echo "Created vimrc.backup in home diretory"
fi
cp .vimrc ~
echo "Vim config copied to home directory"

echo "Vim setup is completed"

