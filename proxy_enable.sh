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