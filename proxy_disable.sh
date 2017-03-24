#!/bin/bash

# comment ~/.bashrc
bashrc="$HOME/.bashrc"
echo -e "Preparing to comment $bashrc proxy settings"
if [ -e "$bashrc" ]; then
    echo -e "Commenting $bashrc proxy settings"
    sed -i '/^\(http\|https\|ftp\|no\)_proxy/s/^/#/g' "$bashrc"
    sed -i '/^\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^/#/g' "$bashrc"
    echo -e "Finished commenting $bashrc proxy settings"
else
    echo -e "Not commenting $bashrc proxy settings because file doesn't exist"
fi

# comment /etc/environment
envconf="/etc/environment"
echo -e "Preparing to comment $envconf proxy settings"
if [ -e "$envconf" ]; then
    echo -e "Commenting $envconf proxy settings"
    sed -i '/^\(http\|https\|ftp\|no\)_proxy/s/^/#/g' "$envconf"
    sed -i '/^\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^/#/g' "$envconf"
    echo -e "Finished commenting $envconf proxy settings"
else
    echo -e "Not commenting $envconf proxy settings because file doesn't exist"
fi

# comment apt conf proxy settings
aptconf="/etc/apt/apt.conf"
echo -e "Preparing to comment $aptconf proxy settings"
if [ -e "$aptconf" ]; then
    echo -e "Commenting $aptconf proxy settings"
    sed -i '/Proxy/s/^/#/g' "$aptconf"
    echo -e "Finished commenting $aptconf proxy settings"
else
    echo -e "Not commenting $aptconf proxy settings because file doesn't exist"
fi

# gsettings proxy settings
echo -e "Preparing to disable gsettings proxy settings"
gsettings set org.gnome.system.proxy mode "none"
