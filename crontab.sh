#!/bin/bash
script_location=$(pwd)
CRON_JOB="22 23 * * * ${script_location}"

(crontab -l 2>/ddev/null; echo "$CRON_JOB") | crontab -