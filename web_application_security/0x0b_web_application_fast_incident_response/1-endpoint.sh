#!/bin/bash
grep '"[A-Z]\+ /' logs.txt | awk -F'"' '{print $2}' | awk '{print $2}' | sort | uniq -c | sort -nr | head -n1 | awk '{print $2}' 