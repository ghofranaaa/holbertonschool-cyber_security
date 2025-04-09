#!/bin/bash
ps aux | grep "^$1" | grep -v ' 0  0 ' | cut -c 1-10,11-15,16-20,21-25,26-30,31-35,36-