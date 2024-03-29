function psgrep() {
 ps aux | grep $1 | grep -v grep
}

function killgrep() {
 kill -9 $(psgrep $1 | awk '{print $2}')
 psgrep $1
}

function sum() {
 awk '{sum += $1;} END {print sum;}'
}

function memusg() {
 ps -o pid,user,%mem,command ax | grep $1 | awk '{print $3}' | sum
}

function clone_my_repo() {
	git clone git@github.com:iarigby/$1
}

function clip() {
	xclip -sel clip < $1
}

alias gcm=clone_my_repo 

function git() {   
        [[ "$(pwd)" == "$HOME" ]] && yadm "$@" || /usr/bin/git "$@"
}

function bandit() {
	ssh -p 2220 bandit$1@bandit.labs.overthewire.org
}

function bsnm() {
	basename $(PWD)
}
