function s
	bash ~/.config/fish/scripts/$argv[1]
end

source ~/.config/fish/functions/*

alias playing "s playing"

xrdb ~/.Xresources
