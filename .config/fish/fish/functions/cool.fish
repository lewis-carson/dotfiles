function cool 
	convert $argv -colors 1 -size 100x100 ~/.temp/end.jpg
	feh --bg-fill ~/.temp/end.jpg
end
