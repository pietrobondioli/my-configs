# Fish Config

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
        set_color blue
        printf " - "
        set_color magenta
        printf "%s" "$PWD"
        set_color red --bold
        printf "]"
        set_color normal --bold
        printf (fish_git_prompt)
        set_color green
        printf "\$"
        printf " "
        set_color normal
end

# Pacman

abbr p "sudo pacman"

# System

abbr ss "sudo systemctl"
abbr ka "killall"

function grep
        command grep --color=auto $argv
end

function ls
        command ls -h -l -N --color=auto --group-directories-first $argv
end

abbr ls. "ls -a"

abbr lsall "ls -a -R"

function exa
        command exa --long --sort=type --icons $argv
end

abbr exa. "exa -a"

function exat
        exa --tree --level=$argv[1] $argv[2..-1]
end

abbr exaall "exa -a -tree"

function rm
        command rm -v --preserve-root $argv
end

function rmd
        command rm -v -r --preserve-root $argv
end

abbr rmall "rm -r"

function mkdir
        command mkdir -p -v $argv
end

function reboot
        sudo /sbin/reboot
end

function shutdown
        sudo /sbin/shutdown
end


abbr v "vim"

abbr sv "sudo vim"

function www
        python -m SimpleHTTPServer 8000
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
