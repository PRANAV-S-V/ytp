# YouTube Playlist Downloader (ytp)

## Introduction

YouTube Playlist Downloader (ytp) is a simple and efficient tool that facilitates the easy downloading of YouTube playlists. With just a few steps, you can have your favorite playlists saved offline for convenient access. This guide will walk you through the process of downloading and using the tool.


## Installation

1. Download the tool by cloning the repository:

    ```bash
    git clone https://github.com/PRANAV-S-V/ytp.git
    ```

2. After unzipping it, Navigate to the downloaded folder:



3. Go into the inner folder called 'ytp':

    ```bash
    cd ytp
    ```

4. Run the following command to initialize the tool:

    ```bash
    source ./start.sh
    ```

## Usage

Now that you have set up the tool, you can easily download YouTube playlists. Use the following command:

```bash
ytp "folder name" "playlist link"
```

- Replace "folder name" with the desired name for the local folder where the playlist will be saved.
- Replace "playlist link" with the link to the YouTube playlist you want to download.

## Example

```bash
ytp "MyFavoriteMusic" "https://www.youtube.com/playlist?list=YOUR_PLAYLIST_ID"
```

This will create a folder named "MyFavoriteMusic" and download the specified YouTube playlist into that folder.
