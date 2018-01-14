function fish_greeting
	set error 0

	cd ~/.dotfiles
	set changedDotfiles (git status --porcelain | wc -l)
	if [ $changedDotfiles != 0 ]
		echo -e "\e[31;5mYou have uncommited changes in your .dotfiles!\e[0m"
		set error 1
	end
	
	if [ $error = 0 ]
		echo -e "\e[32mNothing to be worried about, enjoy your day!\e[0m"
	end
end
