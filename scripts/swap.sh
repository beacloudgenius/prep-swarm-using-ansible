#!/bin/bash -eux

if [ ! -f "/swapfile" ]; then
    dd if=/dev/zero of=/swapfile count=8192 bs=1M
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    echo '/swapfile   none    swap    sw    0   0'  >> /etc/fstab
fi