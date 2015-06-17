#!/bin/bash
if [ $# -gt 0 ]; then
  for dir in $*; do
    find $dir -mindepth 1 -maxdepth 1 -type d | while read gitDir; do
      repo=`echo $gitDir|rev|cut -d'/' -f1|rev`
      echo -e "\e[38;5;62mPull: $repo \e[0m"
      git -C $gitDir pull
    done
  done
else
  echo "Usage: multi-pull.sh < folder > [ folder ] ..."
fi
