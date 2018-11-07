function ii
	cp ~/.secondary_theme ~/.theme
	xrdb ~/.Xresources
	nohup urxvt -name "irc" &
	cp ~/.primary_theme ~/.theme
	xrdb ~/.Xresources
end
