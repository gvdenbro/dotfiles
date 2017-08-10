#!/usr/bin/env bash
if [ -d "/media/greg/corsair/backup" ]; then
    echo "Disk /media/greg/corsair/backup is mounted"
    rsync -av --inplace /home/greg/Documents /home/greg/ebooks /home/greg/Music /home/greg/Pictures /home/greg/Desktop /media/greg/corsair/backup/. --delete
    exit 0
else
    echo "Disk /media/greg/corsair/backup is missing"
    exit 1
fi