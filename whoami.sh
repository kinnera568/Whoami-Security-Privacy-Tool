clear
green=`tput setaf 46`
reset=`tput sgr0`
echo "${green}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
 ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"  
red=`tput setaf 196`
reset=`tput sgr0`
echo
echo -n "${green}"Creat a new password "for" tool "" && echo ${red}"[ Password now invisible ]"
read -s password
echo "${green}"Password creat successful  
service network-manager stop 
if chattr -i /etc/resolv.conf  ; then   
   sleep 0
else  clear & echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   & echo ${red}"DNS CHANGE IS FAIL!"${reset} && exit 1
fi
rm -fr /etc/resolsv.confa    
touch /etc/resolv.conf
echo "# Generated by NetworkManager
nameserver 84.200.69.80
nameserver 84.200.70.40
nameserver 91.239.100.100
# NOTE: the libc resolver may not support more than 3 nameserver.
# The nameserver listed below may not be recognized.
nameserver 89.233.43.71
nameserver 192.168.1.1" > /etc/resolv.conf
chattr +i /etc/resolv.conf  
yellow=`tput setaf 11`
reset=`tput sgr0`
echo "${yellow}DNS HAS BEEN CHANGED${reset}" && sleep 2 
green=`tput setaf 46`
RED=`tput setaf 196`
reset=`tput sgr0`
reset=`tput sgr0`
lightblue=`tput setaf 14`
reset=`tput sgr0`
echo "${green}Write Your Network Interface {etc:wlan0,wlan1,eth0,eth1}"${reset}
read input
if ifconfig $input down > /dev/null ; then
   macchanger -r $input > /dev/null
   ifconfig $input up  > /dev/null && echo "${lightblue}MAC HAS BEEN CHANGED${reset}" &&sleep 2  
else  clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   && echo ${red}"MAC CHANGE IS FAIL!"${reset} && exit  1
fi
service network-manager start
rm -fr /etc/proxychains.conf
touch  /etc/proxychains.conf
echo "# proxychains.conf  VER 3.1
#
#        HTTP, SOCKS4, SOCKS5 tunneling proxifier with DNS.
#	

# The option below identifies how the ProxyList is treated.
# only one option should be uncommented at time,
# otherwise the last appearing option will be accepted
#
#dynamic_chain
#
# Dynamic - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# at least one proxy must be online to play in chain
# (dead proxies are skipped)
# otherwise EINTR is returned to the app
#
strict_chain
#
# Strict - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# all proxies must be online to play in chain
# otherwise EINTR is returned to the app
#
#random_chain
#
# Random - Each connection will be done via random proxy
# (or proxy chain, see  chain_len) from the list.
# this option is good to test your IDS :)

# Make sense only if random_chain
#chain_len = 2

# Quiet mode (no output from library)
#quiet_mode

# Proxy DNS requests - no leak for DNS data
proxy_dns 

# Some timeouts in milliseconds
tcp_read_time_out 15000
tcp_connect_time_out 8000

# ProxyList format
#       type  host  port [user pass]
#       (values separated by 'tab' or 'blank')
#
#
#        Examples:
#
#            	socks5	192.168.67.78	1080	lamer	secret
#		http	192.168.89.3	8080	justu	hidden
#	 	socks4	192.168.1.49	1080
#	        http	192.168.39.93	8080	
#		
#
#       proxy types: http, socks4, socks5
#       ( auth types supported: ""basic""-http  ""user/pass""-socks" ")""
#
[ProxyList]
# add proxy here ...
# meanwile
# defaults set to ""tor""
socks4 	127.0.0.1 9050" > /etc/proxychains.conf  
if service tor start > /dev/null  ; then
   sleep 0
else clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   && echo ${red}"TOR CHANGE AND START IS FAIL!"${reset} && exit 1
fi
purple=`tput setaf 129`
reset=`tput sgr0`
echo "${purple}TOR HAS BEEN CHANGED AND STARTED${reset}" && sleep 2
clear
echo "${green}
 ██████╗  █████╗ ███████╗███████╗██╗    ██╗██████╗      ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗
 ██╔══██╗██╔══██╗██╔════╝██╔════╝██║    ██║██╔══██╗    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝
 ██████╔╝███████║███████╗███████╗██║ █╗ ██║██║  ██║    ██║     ███████║█████╗  ██║     █████╔╝ 
 ██╔═══╝ ██╔══██║╚════██║╚════██║██║███╗██║██║  ██║    ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ 
 ██║     ██║  ██║███████║███████║╚███╔███╔╝██████╔╝    ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗
 ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚══╝╚══╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝ "
echo ""
echo "${green}Write your password${reset}"
read -s rpasswd
if [[ $rpasswd == $password ]]; then      
       echo "${green}"Authentication sucsessfull"" && sleep 2
else   clear && echo "${red}
 ██████╗  █████╗ ███████╗███████╗██╗    ██╗██████╗      ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗
 ██╔══██╗██╔══██╗██╔════╝██╔════╝██║    ██║██╔══██╗    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝
 ██████╔╝███████║███████╗███████╗██║ █╗ ██║██║  ██║    ██║     ███████║█████╗  ██║     █████╔╝ 
 ██╔═══╝ ██╔══██║╚════██║╚════██║██║███╗██║██║  ██║    ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ 
 ██║     ██║  ██║███████║███████║╚███╔███╔╝██████╔╝    ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗
 ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚══╝╚══╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝
                                                                                              "  &&  echo "${red}"Authentication fail "" && exit 1 
   
fi
clear
green=`tput setaf 46`
reset=`tput sgr0`
echo "${green} 
 ██╗    ██╗██╗  ██╗ ██████╗      █████╗ ██████╗ ███████╗    ██╗   ██╗ ██████╗ ██╗   ██╗    ██████╗ 
 ██║    ██║██║  ██║██╔═══██╗    ██╔══██╗██╔══██╗██╔════╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║    ╚════██╗
 ██║ █╗ ██║███████║██║   ██║    ███████║██████╔╝█████╗       ╚████╔╝ ██║   ██║██║   ██║      ▄███╔╝
 ██║███╗██║██╔══██║██║   ██║    ██╔══██║██╔══██╗██╔══╝        ╚██╔╝  ██║   ██║██║   ██║      ▀▀══╝ 
 ╚███╔███╔╝██║  ██║╚██████╔╝    ██║  ██║██║  ██║███████╗       ██║   ╚██████╔╝╚██████╔╝      ██╗   
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝       ╚═╝   
                                                                                                  " 
RED=`tput setaf 196`
reset=`tput sgr0`
cd .IPgeo
cd IPGeoLocation
proxychains python3 ipgeolocation.py -m
cd ..
cd ..
echo ${RED}READY FOR ALL! ${reset} 
echo -n ${RED}WARNING:${reset} && echo ${green}If you need more anonymous terminal you just wri̇te your how much need.
for (( ; ; ))
do
green=`tput setaf 46`
reset=`tput sgr0`
echo -n "${green}> ${reset}" && read input
if n=0; [[ $n -lt $input ]]; then      
      bash n=0; while [[ $n -lt $input ]]; do gnome-terminal --title="WHO AM I TERMİNAL"  --  bash term.sh  ; ((n= n+1)); done && clear && echo "${green}####################### $input Terminal has been launched ! #######################"
elif  [[ : ]]; then
      proxychains $input
      
fi
done
