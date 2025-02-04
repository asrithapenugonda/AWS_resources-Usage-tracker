#!/bin/bash

# Define the cron job to run every minute
CRON_JOB="* * * * * /home/ubuntu/projects/AWS_resourceTracker.sh"

# Add the cron job to the crontab
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
