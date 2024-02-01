#!/bin/bash

# Function to install yt-dlp based on the operating system
install_ytdlp() {
    OS=$(uname -s)
    case "$OS" in
        Linux*)
            echo "Installing yt-dlp on Linux..."
            if command -v brew &> /dev/null; then
                brew install yt-dlp
            elif command -v pacman &> /dev/null; then
                sudo pacman -Syu yt-dlp
            elif command -v apt &> /dev/null; then
                sudo add-apt-repository ppa:tomtomtom/yt-dlp
                sudo apt update
                sudo apt install yt-dlp
            elif command -v apk &> /dev/null; then
                doas apk -U add yt-dlp
            else
                echo "Unsupported package manager on Linux. Install yt-dlp manually."
            fi
            ;;
        Darwin*)
            echo "Installing yt-dlp on macOS..."
            if command -v brew &> /dev/null; then
                brew install yt-dlp
            elif command -v port &> /dev/null; then
                sudo port install yt-dlp
            else
                echo "Unsupported package manager on macOS. Install yt-dlp manually."
            fi
            ;;
        CYGWIN*|MINGW*)
            echo "Installing yt-dlp on Windows..."
            if command -v scoop &> /dev/null; then
                scoop install yt-dlp
            elif command -v choco &> /dev/null; then
                choco install yt-dlp
            elif command -v winget &> /dev/null; then
                winget install yt-dlp
            else
                echo "Unsupported package manager on Windows. Install yt-dlp manually."
            fi
            ;;
        *)
            echo "Unsupported operating system: $OS"
            ;;
    esac
}

# Install yt-dlp
install_ytdlp

