#!/bin/bash
lsb_release -i | cut -f2 | grep -q "Kali"
