#!/bin/bash
./john/run/john --wordlist=./rockyou.txt --format=raw-md5 "$1"