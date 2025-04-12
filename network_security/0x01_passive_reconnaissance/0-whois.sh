#!/bin/bash
whois "$1" | grep -E "(Registrant|Admin|Tech) (Name|Organization|Street|City|State|Postal|Country|Phone|Fax|Email)" | awk '{print $1,$2","$3,$4,$5,$6,$7,$8,$9,$10,$11,$12}' > "$1.csv"