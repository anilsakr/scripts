#!/bin/bash
##Usage: sh script.sh <downloadurl>
url=$1
if [ -z ${1} ]; then
        echo "Please pass the url to download the log file"
        exit 1
fi
echo "Downloding the log file.."
curl -o nginx_logs $1
echo "Downloading the log file completed."
echo ""
echo "Filtering the output to list the repeated status's with count"
echo "  Count status_code"
awk '{print $9}' nginx_logs | sort | uniq -c | sort
rm -rf nginx_logs

#./StatusCount.sh https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs
