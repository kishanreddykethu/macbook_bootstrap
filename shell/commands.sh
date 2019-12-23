source ~/.bash_profile
export PYCURL_SSL_LIBRARY=openssl
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
alias dnsflush="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
checkTunnel(){
        #Test by running the following command
        #checkTunnel localhost 9900;
        nc -z $1 $2;
        if [ $? -ne 0 ]; then
                echo "No tunnel"
                return 1;
        fi
}
