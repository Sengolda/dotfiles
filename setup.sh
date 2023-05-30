#!/bin/bash

mkdir -p ~/.config

# Setup bash files
cp bash/.bashrc ~/.bashrc
cp bash/.bash_aliases ~/.bash_aliases
echo "Sengolda's dotfiles: Setup bash config"

# Install snap
cp /etc/apt/preferences.d/nosnap.pref ~/Desktop/nosnap.pref
rm -f /etc/apt/preferences.d/nosnap.pref
apt-get install snapd
snap install core
echo "Sengolda's dotfiles: Setup snap"

# Setup kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n
ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
ln -s /usr/local/bin/kitty /usr/bin/kitty

cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop

cp ~/.local/kitty.app/share/applications/kitty.desktop ~/Desktop
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/Desktop/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/Desktop/kitty*.desktop

gio set ~/Desktop/kitty*.desktop metadata::trusted true
chmod a+x ~/Desktop/kitty*.desktop
mkdir -p ~/.config/kitty
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
echo "Sengolda's dotfiles: Setup kitty terminal"




# Install starship
snap install starship
cp starship/starship.toml ~/.config/starship.toml
echo "Sengolda's dotfiles: Setup starship"


# Install Node, NVM and PNPM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install node --lts # latest LTS version basically
node install -g pnpm
echo "Sengolda's dotfiles: Setup Node, NVM and PNPM"

# Setup git
cp git/.gitconfig ~/.gitconfig
echo "Sengolda's dotfiles: Git setup"

# Install python3
apt-get install python3 python3-dev python3-pip python3-setuptools
echo "Sengolda's dotfiles: Installed python"

# Install bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

# Install TheFuck
pip3 install -U thefuck --user
echo "Sengolda's dotfiles: TheFuck installed"

# Install oh-my-git
git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git && echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc
echo "Sengolda's dotfiles: Installed oh-my-git"

# Install Visual Studio Code
snap install code --classic

# Install Deno
curl -fsSL https://deno.land/x/install/install.sh | sh
echo "Sengolda's dotfiles: Deno installed"

# Install Neofetch
apt-get install neofetch
cp neofetch/config.conf ~/.config/neofetch/config.conf
echo "Sengolda's dotfiles: Neofetch setup"

echo "Sengolda's dotfiles are all setup on your system and good to go"
source ~/.bashrc
