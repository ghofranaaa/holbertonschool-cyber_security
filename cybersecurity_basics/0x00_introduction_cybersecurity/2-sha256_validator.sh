#!/bin/bash
[ "$(sha256sum "$1" | cut -d' ' -f)" = "$2" ] && echo "$1: OK"