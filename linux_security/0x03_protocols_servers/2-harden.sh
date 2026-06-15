#!/bin/bash
find / -type d -perm -0002 -exec chmod o-w {} \; -exec echo {} \; 2>/dev/null