#!/bin/bash
whois $1 | awk '/Registrant|Admin|Tech/ {print $1 "," $2}' > $1.csv
