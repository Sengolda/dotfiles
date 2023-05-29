# Install snap
cp /etc/apt/preferences.d/nosnap.pref ~/Desktop/nosnap.pref
rm -f /etc/apt/preferences.d/nosnap.pref
apt-get install snapd
snap install core
echo "Sengolda's dotfiles: Setup snap"

# Install starship
snap install starship
cp starship/starship.toml ~/.config/starship.toml
echo "Sengolda's dotfiles: Setup starship"


# Install Node, NVM and PNPM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install node --lts # latest LTS version basically
node install -g pnpm
echo "Sengolda's dotfiles: Setup Node, NVM and PNPM"

# Install git
snap install git
cp git/.gitconfig ~/.gitconfig
echo "Sengolda's dotfiles: Git installed"

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
#snap install code --classic

echo "Sengolda's dotfiles are all setup on your system and good to go"
source ~/.bashrc