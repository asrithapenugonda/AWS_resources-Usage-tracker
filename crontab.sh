#!/bin/bash
#script_location=$(pwd)
CRON_JOB="* * * * * /home/ubuntu/AWS_resources-Usage-tracker/script.sh"

(crontab -l 2>/dev/null; echo ${CRON_JOB}) | crontab -
