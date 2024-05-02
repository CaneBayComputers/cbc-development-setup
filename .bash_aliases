# CD
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias repos='~; cd repos'
alias development='repos; cd cbc-development-setup'
alias dockerphp7='repos; cd cbc-docker-php7-laravel'
alias dockerphp8='repos; cd cbc-docker-php8-laravel'
alias cbcstack='repos; cd cbc-docker-stack'
alias laravelphp7='repos; cd cbc-laravel-php7'
alias laravelphp8='repos; cd cbc-laravel-php8'

# Docker
alias dockerup="docker compose up -d"
alias dockerdown="docker compose down"
alias dockerexec="docker container exec -it"
alias dockerrm="docker container rm"
alias dockerls="docker container ls"
alias upcbcstack='cbcstack; dockerup'
alias downcbcstack='cbcstack; dockerdown'
alias dockerexec-developer='dockerexec --user developer $(basename $(pwd))'

# Color
alias echo-red='tput setaf 1 ; echo'
alias echo-green='tput setaf 2 ; echo'
alias echo-yellow='tput setaf 3 ; echo'
alias echo-blue='tput setaf 4 ; echo'
alias echo-magenta='tput setaf 5 ; echo'
alias echo-cyan='tput setaf 6 ; echo'
alias echo-white='tput setaf 7; echo'

# Artisan
alias art='php artisan'
alias art-docker='dockerexec-developer php /usr/share/nginx/html/artisan'

# Git
alias gstatus='echo; pwd ; echo ; git status ; echo ; echo -------------------------------------------------- ; echo'
alias gbranch='git branch -a -v'
alias gadd='git add -A'
alias gcommit='git commit -a -m'
alias gpush='git push -v'
alias gpull='git pull -v'
alias gquick='echo "Commit message: " && read MESSAGE && gstatus && gadd && gcommit "$MESSAGE" && gpush'
alias gfetch='git fetch ; gstatus'
alias gstatusall='repos; for DIR in */; do cd $DIR; if ! git diff-index --quiet HEAD --; then gstatus; fi; cd ..; done'

# Sudo
alias ifconfig='sudo ifconfig'
alias umount='sudo umount'
alias mount='sudo mount'
alias sshfs='sudo sshfs -o allow_other'
alias su='sudo su'
alias apt-get='sudo apt-get -y'
alias systemctl='sudo systemctl'
alias service='sudo service'
alias updatedb='sudo updatedb'
alias iptables='sudo iptables'
alias shutdown='sudo shutdown -h now'
alias poweroff='sudo poweroff'
alias lsusb='sudo lsusb'
alias lspci='sudo lspci'
alias lsblk='sudo lsblk'
alias visudo='sudo visudo'
alias docker="sudo docker"

# Misc
alias la='ls -la'
alias whatismyip='wget -qO- https://ipinfo.io/ip | tee /dev/tty | xclip ; echo'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias crontab='crontab -e'
alias bash_aliases='nano ~/.bash_aliases; source ~/.bash_aliases'
alias xclip='xclip -sel clip'
alias bigcomment='echo "Type comment:" && read COMMENT && figlet -f "ANSI Regular" $COMMENT | tee /dev/tty | xclip'
alias off='poweroff'
alias untar='tar -xvf'
alias hosts='sudo nano /etc/hosts'
alias composer-ignore='composer --ignore-platform-reqs'
alias mount-bucket='echo -ne "Bucket: " && read B && mkdir -p ~/s3/$B && s3fs $B ~/s3/$B -o passwd_file=~/.passwd-s3fs,use_path_request_style'