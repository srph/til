#!/bin/bash

DATE = `date +%Y-%m-%d`
EXT = ".md"
NAME = $DATE.$1.$EXT

echo "file $NAME has been created"
