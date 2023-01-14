#!/usr/bin/env bash

set -e

for file in user_configuration.json user_disk_layout.json; do
    curl http://10.4:3000/archinstall/$file > $file
done 

sed -i "s/^#ParallelDownloads.*/ParallelDownloads = 8/" /etc/pacman.conf

archinstall --config user_configuration.json --disk-layout user_disk_layout.json
