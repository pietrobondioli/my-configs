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
4. Make *zsh* default shell: `sudo chsh -s /bin/fish`
