#!/bin/bash

# Function to install yt-dlp based on the operating system
install_ytdlp() {
    case "$(uname -s)" in
        Linux*)
            echo "Installing yt-dlp on Linux..."
            curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
            chmod a+rx ~/.local/bin/yt-dlp
            ;;
        Darwin*)
            echo "Installing yt-dlp on macOS..."
            curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
            chmod a+rx ~/.local/bin/yt-dlp
            ;;
        CYGWIN*|MINGW*)
            echo "Installing yt-dlp on Windows..."
            curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe -o ~/yt-dlp.exe
            ;;
        *)
            echo "Unsupported operating system: $(uname -s)"
            ;;
    esac
}

# Install yt-dlp
install_ytdlp
