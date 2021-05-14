# Fish config

function fish_greeting
        fortune -a -n 512 -s | cowsay
end

function fish_prompt
        set_color red --bold
        printf "["
        set_color yellow
        printf "%s" "$USER"
        set_color green
        printf "@"
        set_color cyan
        printf "%s" "$hostname"
        printf " "
        set_color magenta
        printf "%s" "$PWD"
        set_color red --bold
        printf "]"
        set_color normal --bold
        printf (fish_git_prompt)
        set_color green --bold
        printf "\$"
        printf " "
        set_color normal
end

# Pacman

abbr p "sudo pacman"

# System

abbr ss "sudo systemctl"
abbr ka "killall"

function ls
        command ls -h -l --color=auto $argv
end

abbr ls. "ls -a"

abbr lsall "ls -a -R"

function exa
        command exa --long --sort=type --icons $argv
end

abbr exa. "exa -a"

function exat
        exa --tree --level=$argv
end

abbr exaall "exa -a -tree"

function rm
        command rm -v --preserve-root $argv
end

abbr rmall "rm -r"

function mkdir
        command mkdir -p -v
end

function reboot
        sudo /sbin/reboot
end

function shutdown
        sudo /sbin/shutdown
end

# Network

function myip
        curl ipinfo.io/ip
end

abbr ipc "ip -c -h"

abbr speed "speedtest-cli"

# Git

abbr g "git"

# Docker

abbr d "docker"

# Docker-Compose

abbr dcps "docker-compose ps"
abbr dci "docker-compose images"
abbr dcu "docker-compose up"
abbr dcb "docker-compose up --build"
abbr dcd "docker-compose down"


# Util

function www
        python -m SimpleHTTPServer 8000
end
