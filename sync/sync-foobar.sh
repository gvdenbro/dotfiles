#!/usr/bin/env bash
if [ -h "/dev/disk/by-label/corsair" ]; then
    echo "Disk /media/greg/corsair is mounted"
    if [ -d "/media/greg/corsair/backup" ]; then
        rsync --inplace /home/greg/Documents /home/greg/ebooks /home/greg/Music /home/greg/Pictures /home/greg/Desktop /media/greg/corsair/backup/.
    fi
    exit 0
else
    echo "Disk /media/greg/corsair/backup is missing"
    exit 1
fi