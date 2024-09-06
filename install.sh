apt update -y
apt install xz-utils bzip2 -y
if [ "$user_input" -eq 8 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg.sh)
elif [ "$user_input" -eq 9 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/wireguard-v2hiddify/main/wg1.sh)
   else
     echo "Invalid input. Please enter a number between 1 and 9."
    fi
