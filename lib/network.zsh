alias http='python -m SimpleHTTPServer'

function int-ip { 
    if [ $# -eq 1 ]; 
    then
        /sbin/ifconfig $1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}';
    else
        /sbin/ifconfig | grep -v 127.0.0.1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}';
    fi
}
function int-ips { /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }'; }
function ext-ip () { lynx --dump http://ipecho.net/plain; }
