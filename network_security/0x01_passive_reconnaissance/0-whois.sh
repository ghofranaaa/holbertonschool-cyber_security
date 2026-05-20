#!/bin/bash
whois "$1" | awk '/^(Registrant|Admin|Tech)/{split($0,a,": "); if(a[1] !~ /Ext:$/) sub(/:$/,"",a[1]); print a[1] ", " a[2]}' > "$1.csv"