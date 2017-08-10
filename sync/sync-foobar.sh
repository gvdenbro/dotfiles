#!/usr/bin/env bash
if [ -d "/media/greg/corsair" ]; then
    echo "Disk /media/greg/corsair is mounted"
    rsync -av /home/greg/Documents /home/greg/ebooks /home/greg/Music /home/greg/Pictures /home/greg/Desktop /media/greg/corsair/backup/
    exit 0
else
    echo "Disk /media/greg/corsair is missing"
    exit 1
fi