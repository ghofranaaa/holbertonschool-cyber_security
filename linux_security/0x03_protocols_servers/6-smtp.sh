#!/bin/bash
grep -i "starttls\|smtpd_tls" /etc/postfix/main.cf || echo "STARTTLS not configured"