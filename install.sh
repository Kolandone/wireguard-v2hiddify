apt update -y
apt install xz-utils bzip2 -y
if [ "$user_input" -eq 1 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg.sh)
elif [ "$user_input" -eq 2 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg1.sh)
   else
     echo "Invalid input."
    fi
