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
read -n 1 -s -r -p "${red}Press enter for the install whoami${reset}"
echo ""
mkdir iptool
cd iptool
git clone https://github.com/maldevel/IPGeoLocation
pip3 install -r requirements.txt --user
echo "${green}"IPGeo is installed ✅" ${reset}" && sleep 2 
if apt-get install tor -y  > /dev/null  ; then
   green=`tput setaf 46`
   reset=`tput sgr0`
   echo "${green}"Tor is installed ✅" ${reset}" && sleep 2 
else clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   && echo ${red}INSTALL IS FAIL!${reset} && exit 1
fi
if apt-get install proxychains -y > /dev/null  ; then
   green=`tput setaf 46`
   reset=`tput sgr0`
   echo "${green}"Proxychains is installed ✅" ${reset}"  && sleep 2 
else clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"    &&echo ${red}INSTALL IS FAIL!${reset} && exit 1
fi
if apt-get install macchanger -y  > /dev/null ; then
   green=`tput setaf 46`
   reset=`tput sgr0`
   echo "${green}"Macchanger is installed ✅" ${reset}" && sleep 2
else clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   &&echo ${red}INSTALL IS FAIL!${reset} && exit 1
fi
if apt-get install gnome-terminal -y > /dev/null ; then
   green=`tput setaf 46`
   reset=`tput sgr0`
   echo "${green}"Gnome-terminal installed ✅" ${reset}"  && sleep 2
else clear && echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"    && echo ${red}INSTALL IS FAIL!${reset} && exit 1
fi
echo ${green}"All tool requıred are installed run > whoami.sh " ${reset} 
green=`tput setaf 46`
reset=`tput sgr0`
echo "${green}"Do you want run whoami? [Y,n]"${reset}" 
read -s input
if [[ $input == "Y" || $input == "y" ]]; then
        bash whoami.sh 
fi
echo ${red}"Script closed !" ${reset} 





