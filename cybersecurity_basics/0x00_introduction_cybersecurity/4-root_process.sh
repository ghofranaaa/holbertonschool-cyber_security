#!/bin/bash
ps -u "$1" -o user,pid,%cpu,%mem,vsz,rss,args --no-headers | grep -v ' 0  0 '