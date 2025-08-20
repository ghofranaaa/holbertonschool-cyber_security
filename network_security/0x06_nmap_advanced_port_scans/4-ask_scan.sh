#!/bin/bash
sudo nmap -sA -T1000 $1 -p -reason 80, 22, 25