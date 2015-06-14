#!/bin/bash

if [ $1 == "" ]; then
  echo "Usage:"
  echo "new <title>"
  exit
fi

DATE= "`date +%Y-%m-%d`"
FILENAME= '$DATE-$1.md'

echo -e "---\ntitle:$1\n---" > $FILENAME
echo "file $FILENAME has been created"
