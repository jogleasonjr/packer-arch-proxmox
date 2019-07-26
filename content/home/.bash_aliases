#!/bin/bash

# make a nested dir and CD into it
mk()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# Copy a file to a backup version with a datestamp.
# e.g /your/path/file.txt => /your/path/file.backup.{timestamp}.txt
bk()
{
    FILENAME=$1
    TIMESTAMP=$(date +"%Y%m%d%H%M%S")
    BACKUP=$FILENAME.backup.$TIMESTAMP

    echo Copying $FILENAME to $BACKUP

    cp $FILENAME $BACKUP
}