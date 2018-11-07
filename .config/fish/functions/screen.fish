function shot
	set ws (wmctrl -d | wc -l)
	for i in (seq $ws)
		set cws (math "$i-1")
		wmctrl -s $cws
		sleep 2
		scrot $cws.png
	end
	convert 0.png 1.png 2.png -append $argv
	for i in (seq $ws)
		set cws (math "$i-1")
		rm $cws.png
	end
	wmctrl -s 0
end
