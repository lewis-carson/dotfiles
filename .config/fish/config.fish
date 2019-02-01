source ~/.config/fish/functions/record.fish
source ~/.config/fish/functions/screen.fish
source ~/.config/fish/functions/irc.fish
source ~/.config/fish/functions/text.fish
source ~/.config/fish/functions/book_search.fish
source ~/.config/fish/functions/manage.fish

xrdb ~/.Xresources
set PROMPT_COMMAND 'echo -en \033}0;(tty)\007'
set DISABLE_AUTO_TITLE true

#set -x GOPATH $HOME/go
#set -U PATH /usr/local/go/bin $PATH

alias q "vim"
alias i "irssi -c RIZON"
alias c "xrdb -load ~/.Xresources"
alias r "ranger"
alias define "~/.config/fish/scripts/dico"
alias flip "xcalib -i -a"
alias playing "s horns"
alias up "cat ~/.local/share/fish/fish_history | grep cmd | cut -c 8- | tail -n 2 | head -n 1 | xargs sudo"

function fish_greeting

end

function x
    scrot 0x0.png -q 100
    curl -F "file=@0x0.png" https://0x0.st
    rm 0x0.png
end

function s
    bash ~/.config/fish/scripts/$argv[1]
end

function a
    cat ~/.config/fish/ascii/$argv[1]
end


function im
    wget "$argv[1]" -P "~/.emp/"
    feh ~/.emp/*
    rm ~/.emp/*
end

function gen
    killall compton
    feh --bg-scale ~/wp/collect/matte/rosie.png
    xrdb ~/.Xresources
end

function font
    fc-list | grep "bdf" | grep -o ":.*"
end

