#!/bin/bash
whois $1 | awk -F: '/Registrant|Admin|Tech/ {gsub(/ /, "$", $2); print $1","$2}' | sed 's/$//g' > "$1.csv"
