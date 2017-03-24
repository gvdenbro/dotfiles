#!/bin/bash

# uncomment ~/.bashrc
echo -e "Preparing to uncomment ~/.bashrc proxy settings"
if [ -e "$HOME/.bashrc" ]; then
    echo -e "Uncommenting ~/.bashrc proxy settings"
    sed -i '/^#\(http\|https\|ftp\|no\)_proxy/s/^#//g' ~/.bashrc
    sed -i '/^#\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^#//g' ~/.bashrc
    echo -e "Finished uncommenting ~/.bashrc proxy settings"
else
    echo -e "Not uncommenting ~/.bashrc proxy settings because file doesn't exist"
fi