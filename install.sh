#!/bin/bash
clear



echo -e "\e[1;35m*****************************************"
echo -e "\e[1;35m*\e[0m \e[1;31mY\e[1;32mO\e[1;33mU\e[1;34mT\e[1;35mU\e[1;36mB\e[1;37mE\e[0m : \e[4;34mKOLANDONE\e[0m         \e[1;35m"
echo -e "\e[1;35m*\e[0m \e[1;31mT\e[1;32mE\e[1;33mL\e[1;34mE\e[1;35mG\e[1;36mR\e[1;37mA\e[1;31mM\e[0m : \e[4;34mKOLANDJS\e[0m         \e[1;35m"
echo -e "\e[1;35m*\e[0m \e[1;31mG\e[1;32mI\e[1;33mT\e[1;34mH\e[1;35mU\e[1;36mB\e[0m : \e[4;34mhttps://github.com/Kolandone\e[0m \e[1;35m"
echo -e "\e[1;35m*****************************************"
echo ""

echo -e "\e[1;36m*****************************************"
echo -e "\e[1;32mPlease choose an option:\e[0m"
echo -e "\e[1;36m1. \e[1;33mHiddify config\e[0m"
echo -e "\e[1;36m2. \e[1;33mV2ray,MahsaNG,NikaNG config\e[0m"
echo -e "\e[1;36m*****************************************"
echo -en "\e[1;32mEnter your choice:\e[0m"
read -r user_input

apt update -y
apt install xz-utils bzip2 -y
if [ "$user_input" -eq 1 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg.sh)
elif [ "$user_input" -eq 2 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg1.sh)
   else
     echo "Invalid input."
    fi
