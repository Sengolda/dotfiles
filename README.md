# My dotfiles
Currently I am on **Linux Mint Xfce 21.1** and these are my dotfiles

### To setup on your machine 
**WARNING:** Will remove your exisiting dotfiles if you run the `setup.sh`

Just do:
```bash
git clone https://github.com/Sengolda/dotfiles && cd dotfiles && sudo bash setup.sh
```

You have to also set kitty as the default terminal, to do that run:

```bash
sudo update-alternatives --config x-terminal-emulator
```
Then select one that has `kitty` in it, there can be multiple anyone is fine.


If you do not see any run this command and do the command above again:
```bash
 sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/kitty 50
```

Then just set your wallpaper to the one in [wallpapers](wallpapers/vibrant-05.jpg)


To configure git email and username do:
```bash
git config --global user.name [your username]
git config --global user.email [your email]
```

To use git and github you need to setup ssh keys read how to do that [here](https://www.freecodecamp.org/news/git-ssh-how-to/)


### Screenshots
![image](screenshot.png)
