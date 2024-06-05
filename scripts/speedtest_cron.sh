#!/bin/bash

# Write out current crontab
crontab -l > mycron

# Echo new cron into cron file
echo "0 * * * * /usr/bin/speedtest --json >> /path/to/speedtest.log" >> mycron

# Install new cron file
crontab mycron
rm mycron

echo "Cron job for speed tests has been set up."
