#!/bin/bash

# comment ~/.bashrc
echo -e "Preparing to comment ~/.bashrc proxy settings"
if [ -e "$HOME/.bashrc" ]; then
    echo -e "Commenting ~/.bashrc proxy settings"
    sed -i '/^\(http\|https\|ftp\|no\)_proxy/s/^/#/g' ~/.bashrc
    sed -i '/^\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^/#/g' ~/.bashrc
    echo -e "Finished commenting ~/.bashrc proxy settings"
else
    echo -e "Not commenting ~/.bashrc proxy settings because file doesn't exist"
fi