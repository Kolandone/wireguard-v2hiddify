apt update -y
apt install xz-utils bzip2 -y
if [ "$user_input" -eq 8 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/workercreator/main/run.sh)
elif [ "$user_input" -eq 9 ]; then
    bash <(curl -fsSL https://raw.githubusercontent.com/Kolandone/quick-sub/main/run.sh)
   else
     echo "Invalid input. Please enter a number between 1 and 9."
    fi
