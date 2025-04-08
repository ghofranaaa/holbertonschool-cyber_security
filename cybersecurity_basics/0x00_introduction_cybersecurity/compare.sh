#!/bin/bash

# Decode base64 input argument to a temporary file
echo "$1" | base64 -d > tmp_script.sh

# Check for lsb_release with expected flags
if grep -E 'lsb_release.*(-i|-s|-si|-is)' tmp_script.sh; then
    echo ok
else
    echo invalid
fi

# Cleanup (optional)
rm -f tmp_script.sh
