set -x PATH /usr/local/heroku/bin /opt/extras.ubuntu.com/gwoffice/bin /home/mfierke/scripts /home/mfierke/.gem/ruby/1.9.1/bin /home/mfierke/bin /home/mfierke/bin/android-sdk-linux/platform-tools $PATH
set -x TERM xterm-256color
set -x EDITOR vim

function parse_git_branch
  	set isGit (git rev-parse --is-inside-work-tree 2> /dev/null)
  	if test $isGit
  		printf " (%s)\n" (git symbolic-ref HEAD --short 2> /dev/null)
  	else
  		printf " \n"
  	end
end

function fish_prompt
	printf "[\033[22;31m%s\033[01;37m@\033[0;32m%s\033[0;37m] \033[1;37m%s" (whoami) (hostname|cut -d . -f 1) (prompt_pwd)
	parse_git_branch
	printf "\$ \033[0;37m"
end


alias sn='sudo nano'
alias sv='sudo vim'
alias oil='php oil'
alias gg='gitg'
alias sage='sudo apt-get'
alias composer='php ~/bin/composer.phar'
alias scheme='mit-scheme'