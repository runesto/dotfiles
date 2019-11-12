#!/bin/sh
#check personal installation
[[ ! -d  "/Applications/Steam.app" ]] && exit 1
#check alias
! alias ll 2>/dev/null >/dev/null && exit 1
# verify that it's running
cd "/Applications/Steam.app"
ll
