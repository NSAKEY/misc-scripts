#!/bin/bash

# adobe.sh by _NSAKEY
# Just a simple script to xzgrep through a compressed version of the adobe
# database and print out all the password hints. echoed text inspired
# by lolcats.

# Depends on: moreutils (For sponge), xzgrep, and a compressed version of the adobe.com users named "adobe.com_users.txt.xz."

cd ~

echo "gief me ur emailz"
read email_raw

# The next 2 lines convert the input to lowercase. If uppercase were needed, then ^^ would be used instead.

email=${email_raw,,}

read -p "u enturd: $email. iz dis kurekt? (y/n)"
if [[ $REPLY =~ ^[Yy]$ ]]
    then
        xzgrep -m 1 $email ~/adobe.com_users.txt.xz > ~/adb.tmp | tee
        cat ~/adb.tmp
        awk -F\-\|\- '{print $7,$8}' ~/adb.tmp | sponge ~/adb.tmp
        sed -i 's/ //g' ~/adb.tmp
        sed -i 's/|//g' ~/adb.tmp
        pass=$(cat ~/adb.tmp)
        xzgrep -F $pass ~/adobe.com_users.txt.xz | awk -F\-\|\- '{print $9}' | sort -u
    else
        exit;
fi
