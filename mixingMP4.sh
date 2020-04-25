#!/bin/bash
##Usage: mixingMP4.sh <video1> <video2> <location>
video1=$1
video2=$2
location=$3
type=`echo $video1 | cut -d . -f2`
if [[ "$type" != "mp4" ]]; then
        echo "mp4 video files only allowed.Try again"
        exit 1
fi
type=`echo $video2 | cut -d . -f2`
if [[ "$type" != "mp4" ]]; then
        echo "mp4 video files only allowed.Try again"
        exit 1
fi
if [ -z "${location}" ]; then
  echo "location must be passed in as an argument."
  exit 1
fi

MP4Box -cat "$video1" -cat "$video2" -new $location/mixedVideo.mp4
