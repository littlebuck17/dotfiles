#!/bin/bash

fullfile=${1}
filename=$(basename -- "${fullfile}")
ext="${filename##*.}"
name="${filename%.*}"
y=$(date +"%Y")

if [ $# -eq 0 ]; then
        >&2 echo "I need a movie file to work with!"
        exit 1
fi

ffmpeg -i "${fullfile}" -vcodec h264 -acodec aac -pix_fmt yuv420p "${name}.mp4"
rclone copy "${name}.mp4" rcorg:ryancollins-org/${y}/

echo "https://f000.backblazeb2.com/file/ryancollins-org/${y}/${name}.mp4"