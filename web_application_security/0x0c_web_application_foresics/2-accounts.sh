#!/bin/bash
tail -n 1000 auth.log | grep -oP "USER=\K\S+" | sort | uniq -c | sort -nr
