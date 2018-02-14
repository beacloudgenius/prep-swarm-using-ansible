#!/bin/bash -eux

echo "0 8 * * * docker system prune -f  > /dev/null 2>&1" | crontab -
