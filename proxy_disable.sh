#!/bin/bash

# comment ~/.bashrc
echo -e "Preparing to comment $HOME/.bashrc proxy settings"
if [ -e "$HOME/.bashrc" ]; then
    echo -e "Commenting $HOME/.bashrc proxy settings"
    sed -i '/^\(http\|https\|ftp\|no\)_proxy/s/^/#/g' "$HOME/.bashrc"
    sed -i '/^\(HTTP\|HTTPS\|FTP\|NO\)_PROXY/s/^/#/g' "$HOME/.bashrc"
    echo -e "Finished commenting $HOME/.bashrc proxy settings"
else
    echo -e "Not commenting $HOME/.bashrc proxy settings because file doesn't exist"
fi