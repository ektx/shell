function prompt
{
    local BGreen='\e[1;32m'       # Green
    local BIBlue='\e[1;94m'       # Blue
    local GRAY="\[\033[0;37m\]"   # Gray
    local BYellow='\e[1;33m'      # Yellow
    local BLACK="\[\033[0;30m\]"
    local CYAN='\e[\033[1;36m'
    export PS1="
${BGreen}\u${BGreen}@${BGreen}\h:${BIBlue}\w${BLACK}
$ "
}
prompt