#!/usr/bin/env bash


# Check if sudo is installed
if ! command -v sudo &> /dev/null
then
    echo "sudo could not be found."
    echo "Make sure it is in your PATH and/or is installed"
    echo "Make sure your user is part of the sudoers group"
    exit
fi

# Install required packages assuming a Debian based distro.
sudo apt install zsh git build-essential \
    neovim \
    ripgrep \
    ttf-anonymous-pro \
    tmux \
    nodejs \
    npm

# Installing Oh My ZSH if it is not yet
if [[ ! -f ~/.zshrc ]]; 
then
    echo "INSTALLING OH MY ZSH."
    echo ""
    echo ""
    echo ""
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    cp zsh/.zshrc ~/.zshrc
    source ~/.zshrc
fi

# Installing Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim
cp nvim/init.vim ~/.config/nvim/
vim +PluginInstall +qall

# Installing Alacritty
#sudo add-apt-repository ppa:mmstick76/alacritty
#sudo apt-get update
#sudo apt install alacritty
#mkdir -p ~/.config/alacritty
#cp alacritty/alacritty.yml ~/.config/alacritty/

# Installing tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf

echo "Installation complete!"
echo ""
echo ""
echo ""
echo "The first time you open TMUX you will need to run prefix + I"


