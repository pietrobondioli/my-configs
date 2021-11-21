# OH-MY-ZSH

[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) is a framework for managing [zsh](https://www.zsh.org/) shell.

## Instructions

1. Install *zsh*:
   - On arch linux/manjaro: `sudo pacman -S zsh`
2. Install *oh-my-zsh*: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## My configs

1. Put *xxf.zsh-theme* at `~/.oh-my-zsh/custom/themes/` (author: [xfanwu](https://github.com/xfanwu))
2. Clone *zsh-autosuggestions* and *zsh-syntax-highlighting* plugins to `~/.oh-my-zsh/custom/plugins/`:
   - `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
   - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
3. Fix permissions of *zsh-syntax-highlighting*: `chmod 700 ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
4. Configuring `~/.zshrc` file:
   1. Change *ZSH_THEME* to *"xxf"*
   2. Add plugins:`plugins=(git zsh-autosuggestions zsh-syntax-highlighting common-aliases command-not-found dotnet kubectl urltools encode64 themes jsontools history)`
5. Configuring CowFortune:
   1. Install *fortune-mod* and *cowsay* packages:
      - On Arch: `pacman -S fortune-mod cowsay`
   2. Put *cowfortune* command in *~/.zshenv*: ```echo 'fortune | cowsay -f `ls /usr/share/cows/*.cow | shuf -n 1`' >> ~/.zshenv```
6. Make *zsh* your default shell if it isn't: `chsh -s $(which zsh)`
