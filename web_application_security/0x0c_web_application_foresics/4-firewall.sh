#!/bin/bash
grep -i "/sbin/iptables -A 	INPUT" auth.log | wc l
