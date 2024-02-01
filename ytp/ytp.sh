#!/bin/bash

ytp() {
    playlist_folder="$HOME/$1"
    mkdir -p "$playlist_folder"

    # Download the playlist using yt-dlp
    yt-dlp -i --yes-playlist --write-sub -f best -o "$playlist_folder/%(playlist_index)s - %(title)s.%(ext)s" "$2"
}

