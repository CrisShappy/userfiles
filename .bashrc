#
# ~/.bashrc
#
####################THE GRIMOIRE###################
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoredups:erasedups
export EDITOR='vim'
export MAKEFLAGS="-j17 -l16"

## ls shortcuts & overwriting ls to exa 
alias ls='exa -la --color=always --group-directories-first'
alias la='exa -a  --color=always --group-directories-first'
alias ll='exa -l  --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first' # tree listing

## general shortcuts
alias grep='grep --color=auto'
alias ping='ping -c 3'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias ssn='sudo shutdown now'
alias sr='sudo reboot'
alias top='htop'
alias df='df -h'
alias free='free -m'
alias fmpv='mpv --fs'
alias nmpv='mpv --no-video'
alias dlmp3='youtube-dl --extract-audio --audio-format mp3'
alias gpgkey='gpg --list-secret-keys --keyid-format LONG'

## pacman commands
alias sp='pacman -Ss'
alias update='doas pacman -Syu'
alias force='doas pacman -Syyu'
alias dl='doas pacman -S'
alias yayup='yay -Sua'
alias unlock='sudo rm /var/lib/pacman/db.lck'

## git shortcuts
alias clone='git clone'
alias pull='git pull origin'
alias push='git push origin'
alias commit='git commit -m'
alias checkout='git checkout'
alias fetch='git fetch'
alias branch='git branch'
alias status='git status'
alias tag='git tag'
alias add='git add'
alias addup='git add -u'
alias addall='git add .'

## find top RAM eaters
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## find top CPU eaters
alias pscpu='ps auxf | sort -nr k 3'
alias pscpu10='ps auxf | sort -nr k 3 | head -10'

## Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

PS1="\[\e[33m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[m\]\W\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

## The Magical Archive Extractor
ex ()
{
	if [ -f $1 ] ; then
	case $1 in
		*.tar.bz2)   tar xjf $1   ;;
		*.tar.gz)    tar xzf $1   ;;
		*.bz2)       bunzip2 $1   ;;
		*.rar)       unrar x $1   ;;
		*.gz)        gunzip $1    ;;
		*.tar)       tar xf $1    ;;
		*.tbz2)      tar xjf $1   ;;
		*.tgz)       tar xzf $1   ;;
		*.zip)       unzip $1     ;;
		*.Z)         uncompress $1;;
		*.7z)        7z x $1      ;;
		*.deb)       ar x $1      ;;
		*.tar.xz)    tar xf $1    ;;	
		*.tar.zst)   unzstd $1    ;;
		*)           echo "'$1' cannot be extracted via ex()" ;;
	esac
	else
		echo "'$1' is not a valid file"
	fi
}

echo -E " (\.   \      ,/)"
echo -E "  \(   |\     )/"
echo -E "  //\  | \   /\\"
echo -E " (/ /\_#oo#_/\ \)"
echo -E "  \/\  ####  /\/"
echo -E "       '##'"
echo 
echo 'Welcome Wizard!'
