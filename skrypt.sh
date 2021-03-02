#!/bin/bash

killall waga_read.sh
killall dd

/root/waga_read.sh >> /root/waga.tmp
cat /root/waga.tmp > /root/waga.txt
rm /root/waga.tmp
cat /root/waga.txt > /var/www/html/waga.txt
