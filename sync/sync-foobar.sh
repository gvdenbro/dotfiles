#!/usr/bin/env bash
if [ -h "/dev/disk/by-label/corsair" ]; then
    echo "Disk /media/greg/corsair is mounted"
    if [ -d "/media/greg/corsair/backup" ]; then
        rsync -vhrt --partial --delete /home/greg/Documents /home/greg/Music /home/greg/Pictures /home/greg/Desktop /media/greg/corsair/backup/. | tee /media/greg/corsair/backup/last.sync
    fi
else
    echo "Disk /media/greg/corsair/backup is missing"
fi
exit 0