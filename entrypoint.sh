#!/bin/bash
if [ ! -z $TZ ]; then
    echo "Timezone is not specified. Using UTC as default timezone"
    echo "UTC" > /etc/timezone
fi

if [ "$(ls -A /etc/cron.d)" ]; then
    echo "Found user configure(s)."
    chmod -R 644 /etc/cron.d
else
    echo "Cannot find user configure(s). Exiting..."
    exit 1
fi

echo "Crontab is ready."
cron -f