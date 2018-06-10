#! /bin/bash
today=$(date +%y%m%d)
time=$(date +%H:%M:%S)
date_time=$(date +%y:%m:%d_%H:%M:%S)
echo "what's date today"
date

echo ""

echo -n "what's date today: "
date 
echo""

echo "today is $today"
echo "The time is $time"
echo "today's date nad time is $date_time"
