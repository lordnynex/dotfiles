# Read a file sans comments
alias nocomment='grep -Ev '\''^(#|$)'\'''

# A shortcut to edit bashrc
alias bashrc="vim ~/.bashrc && source ~/.bashrc"

# Inspect process list by group
alias psg='ps -Helf | grep -v $$ | grep -i -e WCHAN -e '

# Coloring shit
alias ct='colortail'
alias colorless='cat $1 | ccze -A|less -r'
alias syslog="tail -F /var/log/syslog|ccze -A"

# A common typo of mine
alias cd..='cd ..'
alias tf="tail -F "

# Copy SSH public key to clipboard
alias cbssh="cbf ~/.ssh/id_rsa.pub"

# Copy current working directory to clipboard
alias cbwd="pwd | cb"

# Copy most recent command in bash history to clipboard
alias cbhs="cat $HISTFILE | tail -n 1 | cb"

# A commonly used command for me
alias getoctal='stat -c "%a %n"'

###
# Aliases
###

alias root='sudo -i'
alias Grep='grep'
alias ll='ls -alFh'
alias nocomment='grep -Ev '\''^(#|$)'\'''
alias lvim="vim -c \"normal '0\""

## get rid of command not found ##
alias cd..='cd ..'

alias getoctal='stat -c "%a %n"'

alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias diff='colordiff'
alias mnt='mount |column -t'
alias du='du -ch'
alias cpProgress="rsync --progress -ravz"

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

alias ports='netstat -tulanp'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'

# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# Webserver stuff
alias nginxreload='sudo /etc/init.d/nginx reload'
alias nginxtest='sudo /usr/sbin/nginx -t'

# Memory info
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

alias bashrc="vim ~/.bashrc && source ~/.bashrc"

alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'
alias mostusage='du -hsx * | sort -rh | head -10'

alias connections='sudo lsof -n -P -i +c 15 | ccze -A'
alias dirtree="ls -R | grep :*/ | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

alias watchtail='watch -n .5 tail -n 20'
alias watchdir='watch -n .5 ls -la'
alias watchsize='watch -n .5 du -h –max-depth=1'

alias userinfo='getent passwd|column  -t -s: -n'
alias groupinfo='getent group|column  -t -s: -n'


alias ct='colortail'
alias colorless='cat $1 | ccze -A|less -r'
alias hg='history|grep '
alias lsmount='mount|sort|column -t|ccze -A'
alias ns="netstat --numeric-ports --numeric-hosts -atep|ccze -A"
alias syslog="tail -F /var/log/syslog|ccze -A"
alias last='last -a|ccze -A'
