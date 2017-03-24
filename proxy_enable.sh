#!/bin/bash

# uncomment ~/.bashrc
bashrc="$HOME/.bashrc"
echo -e "Preparing to uncomment $bashrc proxy settings"
if [ -e "$bashrc" ]; then
    echo -e "Uncommenting $bashrc proxy settings"
    sed -i '/^#\(http\|https\|ftp\|no\)_proxy/s/^#//g' "$bashrc"
    sed -i '/^#\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^#//g' "$bashrc"
    echo -e "Finished uncommenting $bashrc proxy settings"
else
    echo -e "Not uncommenting $bashrc proxy settings because file doesn't exist"
fi

# uncomment /etc/environment
envconf="/etc/environment"
echo -e "Preparing to uncomment $envconf proxy settings"
if [ -e "$envconf" ]; then
    echo -e "Uncommenting $envconf proxy settings"
    sed -i '/^#\(http\|https\|ftp\|no\)_proxy/s/^#//g' "$envconf"
    sed -i '/^#\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^#//g' "$envconf"
    echo -e "Finished uncommenting $envconf proxy settings"
else
    echo -e "Not uncommenting $envconf proxy settings because file doesn't exist"
fi

# uncomment apt conf proxy settings
aptconf="/etc/apt/apt.conf"
echo -e "Preparing to uncomment $aptconf proxy settings"
if [ -e "$aptconf" ]; then
    echo -e "Uncommenting $aptconf proxy settings"
    sed -i '/Proxy/s/^#//g' "$aptconf"
    echo -e "Finished uncommenting $aptconf proxy settings"
else
    echo -e "Not uncommenting $aptconf proxy settings because file doesn't exist"
fi

# gsettings proxy settings
echo -e "Preparing to enable gsettings proxy settings"
gsettings set org.gnome.system.proxy mode "manual"
