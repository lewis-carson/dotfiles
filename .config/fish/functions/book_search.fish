function book
	set file (find ~/books/ | grep $argv)
	less $file
end
