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
echo "${red}"Do you want remove whoami? [Y,n]"${reset}" 
read -s input
if [[ $input == "N" || $input == "n" ]]; then   
        green=`tput setaf 46`
        reset=`tput sgr0`
        echo "${green}"Whoami is not removed ! ${red}{ User cancel the process  }${green}" ${reset}" && exit 1
fi
        red=`tput setaf 196`
        reset=`tput sgr0`
        echo "${red}"Do you want remove Tor? [Y,n]"${reset}" 
        read -s input
        if [[ $input == "Y" || $input == "y" ]]; then
                 apt-get remove tor -y
		 green=`tput setaf 46`
                 reset=`tput sgr0` 
                 echo "${green}"Tor is removed !" ${reset}" 
        elif [[ $input == "N" || $input == "n" ]]; then   
                 red=`tput setaf 196`
                 reset=`tput sgr0`
                 echo "${red}"Tor is not removed"${reset}" 
       

fi 
        red=`tput setaf 196`
        reset=`tput sgr0`
        echo "${red}"Do you want remove Proxychains? [Y,n]"${reset}" 
        read -s input
        if [[ $input == "Y" || $input == "y" ]]; then
                 apt-get remove proxychains -y
                 green=`tput setaf 46`
                 reset=`tput sgr0` 
                 echo "${green}"Proxychains is removed !"${reset}" 
         elif [[ $input == "N" || $input == "n" ]]; then   
                 red=`tput setaf 196`
                 reset=`tput sgr0`
                 echo "${red}"Proxychains is not removed"${reset}"    
fi 
        red=`tput setaf 196`
        reset=`tput sgr0`
        echo "${red}"Do you want remove Macchanger? [Y,n]"${reset}" 
        read -s input
        if [[ $input == "Y" || $input == "y" ]]; then
                 apt-get remove macchanger -y 
                 reen=`tput setaf 46`
                 reset=`tput sgr0`
                 echo "${green}"Macchanger is removed !"${reset}"
         elif [[ $input == "N" || $input == "n" ]]; then   
                 red=`tput setaf 196`
                 reset=`tput sgr0`
                 echo "${red}"Macchanger is not removed"${reset}"              
fi 
        echo "${red}"Write the WHOAMI file path {ex:/root/Desktop/whoami}"${reset}" 
        read path
if      cd $path ; then
        rm -fr $path 
        green=`tput setaf 46`
        reset=`tput sgr0`
        echo "${green}"All tool required has been successfuly removed !" ${reset}"  

else    clear && green=`tput setaf 46`
reset=`tput sgr0`
echo "${red}
 ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
 ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
 ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
 ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
 ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
             TAKE BACK YOUR PRIVACY                       
"   && echo ${red}UNINSTALL IS FAIL WRONG PATH!${reset} && exit 1
fi
