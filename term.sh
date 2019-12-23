for (( ; ; ))
do
green=`tput setaf 46`
reset=`tput sgr0`
echo -n "${green}> ${reset}" && read input
proxychains $input
done

