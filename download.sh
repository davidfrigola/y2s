#!/bin/bash

# Youtube 2 mp3 based on a file
VIDEOLIST=$1

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Processing $line"
    VIDEOURL=${line%|*}
    VIDEOTITLE=${line#*|}
    echo "Video $VIDEOURL title $VIDEOTITLE"
    COMMAND="./ytb2local/download.sh $VIDEOURL $VIDEOTITLE"
    echo "Executing download using $COMMAND"
    eval "$COMMAND"
done < "$1"
