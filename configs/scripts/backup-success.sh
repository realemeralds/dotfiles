#!/usr/bin/env bash

DOW=$(date +%u)
if [ $DOW -ne 6 ]; then
  echo "not saturday, not emailing success message"
  exit
fi

current_date="`date "+%d %b %y %H:%M"`"
printf "Successful NixOS backup @ /media/backup/nixos-backup on ${current_date} GMT+8"  | mail -s "Successful NixOS backup on ${current_date}" mattechane@gmail.com
