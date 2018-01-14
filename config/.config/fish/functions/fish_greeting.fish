function fish_greeting
	set currentPwd $PWD
	set error 0

	cd ~/.dotfiles
	if [ (git status --porcelain | wc -l) != 0 ]
		echo -e "\e[31mYou have uncommited changes in your .dotfiles.\e[0m"
		set error 1
	end

	cd ~/Programowanie/Bash/bin
	if [ (git status --porcelain | wc -l) != 0 ]
		echo -e "\e[31mYou have uncommited changes in your bin.\e[0m"
		set error 1
	end

	if test -e /tmp/listOfUpgrades
		set numberOfUpgrades (cat /tmp/listOfUpgrades | wc -l)
		if [ $numberOfUpgrades != 0 ]
			echo -e "\e[31mYou have $numberOfUpgrades upgrades awaiting to install.\e[0m"
			set error 1
		end
	end

	cd $currentPwd

	if [ $error = 0 ]
		echo -e "\e[32mNothing to be worried about, enjoy your day!\e[0m"
	else
		echo -e "\e[41;5;1mFix it!\e[0m"
	end
end
