function fetch
	set hostname (id -u -n)@(hostname)
	set os (cat /etc/os-release | grep ID | tail -n 1 | cut -c 4-)
	set sh (basename $SHELL)
	set up (uptime --pretty)

	for word in $hostname $os $sh $up
		for i in (seq (math (tput cols )-(echo $word | wc -m)))
			printf " "
		end
		echo $word
	end
end
